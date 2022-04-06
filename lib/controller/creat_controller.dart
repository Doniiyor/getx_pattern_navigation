import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/post_model.dart';
import '../service/http_services.dart';





class CreateController extends GetxController {

  void saveCreatePost(TextEditingController titleController,
      TextEditingController contentController, BuildContext context) {
    if (contentController.text.isNotEmpty) {
      String title = titleController.text.trim().toString();
      String content = contentController.text.trim().toString();

      Post post = Post(content: content, title: title);
      Network.POST(Network.API_CREATE, Network.paramsCreate(post)).then((
          value) {
        Get.back(result: post);
      });
    }
    else {
     // print(post);
    }
  }
}