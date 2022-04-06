import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_navigation/controller/creat_controller.dart';
import 'package:getx_pattern_navigation/controller/edit_controller.dart';
import 'package:getx_pattern_navigation/views/creat_post.dart';



import '../models/post_model.dart';
import '../views/edit_post.dart';


class CreatPage extends StatefulWidget {
  static const String id = "edit_page";
  CreatPage({Key? key,  }) : super(key: key);


  @override
  State<CreatPage> createState() => _CreatPageState();
}

class _CreatPageState extends State<CreatPage> {
  // EditViewModel viewModel = EditViewModel();

  void initState() {
    // TODO: implement initState
    super.initState();
    Get.find<CreateController>();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("Create Page"),
      ),
      body: GetBuilder(
        init: CreateController(),
        builder: (CreateController controller)  => iteamCreatPost(controller, context,) ,

        // builder: (EditController controller) =>  itemEditPost(controller,context, widget.post),

      ),
    );
  }


}
