import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../models/post_model.dart';
import '../service/http_services.dart';


class EditController extends GetxController {


  void apiUpdateNote(Post post, context) async {
    await Network.PUT(Network.API_UPDATE + post.id.toString(),
        Network.paramsUpdate(post));
    Get.back(result: post);

  }


}