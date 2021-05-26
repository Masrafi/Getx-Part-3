import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_from32/imagePicker/homw_controller.dart';
import 'package:image_picker/image_picker.dart';

class HomeImage extends StatelessWidget {
  JomeController controller = JomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomeView"),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() => controller.selectedImagePath.value == ""
                  ? Text(
                      "Select image from camera/gallery",
                      style: TextStyle(fontSize: 20),
                    )
                  : Image.file(File(controller.selectedImagePath.value))),
              SizedBox(
                height: 10,
              ),
              Obx(() => Text(
                    controller.selectedImageSize.value,
                    style: TextStyle(fontSize: 20),
                  )),
              RaisedButton(
                onPressed: () {
                  controller.getImage(ImageSource.camera);
                },
                child: Text("Camera"),
              ),
              RaisedButton(
                onPressed: () {
                  controller.getImage(ImageSource.gallery);
                },
                child: Text("Gallery"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
