import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_navigation/controller/edit_controller.dart';



import '../models/post_model.dart';
import '../views/edit_post.dart';


class EditPage extends StatefulWidget {
  static const String id = "edit_page";
  Post post;
  EditPage({Key? key, required this.post }) : super(key: key);


  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {

  void initState() {
    // TODO: implement initState
    super.initState();
    Get.find<EditController>();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("Edit Page"),
      ),
      body: GetBuilder(
        init: EditController(),
        builder: (EditController controller)  => itemEditPost(controller, context, widget.post) ,

         // builder: (EditController controller) =>  itemEditPost(controller,context, widget.post),

      ),
    );
  }


}
