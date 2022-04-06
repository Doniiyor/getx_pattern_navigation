import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:getx_pattern_navigation/controller/home_controller.dart';


import '../models/post_model.dart';


Widget itemOfPost(HomeController controller, Post post, BuildContext context) {
  return Slidable(
    endActionPane: ActionPane(
      motion: ScrollMotion(),
      extentRatio: 0.20,
      children: [
        SlidableAction(
          onPressed: (BuildContext context) {
            controller.apiPostDelete(post);
          },
          flex: 3,
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          icon: Icons.delete,
          label: "Delete",
        )
      ],
    ),
    startActionPane: ActionPane(
      motion: ScrollMotion(),
      extentRatio: 0.20,
      children: [
        SlidableAction(
          onPressed: (context) {
            controller.editPage(post);
          },
          flex: 1,
          icon: Icons.edit,
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          label: "Edit",
        ),
      ],
    ),
    child: Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(top: 20, right: 20, left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            post.title!.toUpperCase(),
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          Text(post.content!)
        ],
      ),
    ),
  );
}
