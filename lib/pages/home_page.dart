import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/home_controller.dart';
import '../views/item_post.dart';
import 'creat_page.dart';


class HomePage extends StatefulWidget {
  static const String id = "home_page";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController controller = HomeController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Get.find<HomeController>().apiPostList();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
      builder: (controller) {
        return Scaffold(
            appBar: AppBar(
              title: Text("GetX"),
            ),
            body: Stack(
              children: [
                controller.items.isEmpty ?
                Center(child: Text("No Data",style: TextStyle(color: Colors.red),),):
                ListView.builder(
                  itemCount: controller.items.length,
                  itemBuilder: (ctx, index) {
                    return itemOfPost(controller, controller.items[index], context);
                  },
                ),
                controller.isLoading
                    ? Center(
                  child: CircularProgressIndicator(),
                )
                    : SizedBox.shrink(),
              ],
            ),
            floatingActionButton: FloatingActionButton(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              onPressed: () {
             Get.to(() => CreatPage())?.then((value) => {
               controller.apiPostList(),
             });

              },
              child: Icon(Icons.add),
            ));
      }
    );
  }
}
