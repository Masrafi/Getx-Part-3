import 'package:get/get.dart';
import 'dart:io';

class ImageUploadProvider extends GetConnect {
  //upload Image

  Future<String> uploadImage(File file) async {
    try {
      final form = FormData({
        'file': MultipartFile(file, filename: 'aa.jpg'),
      });

      final response = await post("url", form);
      if (response.status.hasError) {
        return Future.error(response.body);
      } else {
        return response.body['result'];
      }
    } catch (e) {
      return Future.error(e.toString());
    }
  }
}
