import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:multi_image_picker/multi_image_picker.dart';
import 'package:path_provider/path_provider.dart';

void showSnackBar(BuildContext context, String content) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(content),
    ),
  );
}

String getNameFromEmail(String email) {
  return email.split('@')[0];
}

Future<List<File>> pickImages() async {
  List<File> images = [];
  final ImagePicker picker = ImagePicker();
  final imageFiles = await picker.pickMultiImage();
  if (imageFiles.isNotEmpty) {
    for (final image in imageFiles) {
      images.add(File(image.path));
    }
  }
  return images;
}

Future<File?> pickImage() async {
  final ImagePicker picker = ImagePicker();
  final imageFile = await picker.pickImage(source: ImageSource.gallery);
  if (imageFile != null) {
    return File(imageFile.path);
  }
  return null;
}
