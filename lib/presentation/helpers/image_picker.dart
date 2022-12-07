import 'dart:io';
import 'package:archiver/presentation/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart' as img;

class ImagePicker extends StatefulWidget {
  const ImagePicker({
    Key? key,
  }) : super(key: key);

  @override
  ImagePickerState createState() => ImagePickerState();
}

class ImagePickerState extends State<ImagePicker> {
  var imagePath = "";
  img.ImagePicker picker = img.ImagePicker();
  img.XFile? image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Builder(
          builder: (BuildContext context) => Container(
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
            ),
            child: imagePath == ""
                ? Container()
                : Image.file(
                    File(imagePath),
                  ),
          ),
        ),
        Center(
            child: TextButton(
          onPressed: () async {
            image = await picker.pickImage(source: img.ImageSource.gallery);
            setState(() {
              imagePath = image!.path;
            });
          },
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "Click to upload",
              style: TextStyle(
                color: black,
                fontWeight: FontWeight.w700,
                fontSize: 15,
                decoration: TextDecoration.underline,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Icon(
              Icons.cloud_upload,
              color: black,
              size: 15,
            ),
          ]),
        )),
      ],
    );
  }
}
