import 'package:archiver/presentation/constants/colors.dart';
import 'package:archiver/presentation/helpers/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

Widget addNewWindow(BuildContext context) {
  final dateController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  var imagePickerKey = GlobalKey<ImagePickerState>();

  return AlertDialog(
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Add New Data",
          textAlign: TextAlign.start,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Divider(
          color: lineColor,
          thickness: 2,
        )
      ],
    ),
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0))),
    content: Builder(
      builder: (context) {
        var screenHeight = MediaQuery.of(context).size.height;
        var screenWidth = MediaQuery.of(context).size.width;

        return SizedBox(
          height: screenHeight / 2.3,
          width: screenWidth / 1.1,
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(height: 5),
                      const Text(
                        "Date",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(height: 15),
                      Container(
                        padding: const EdgeInsets.only(left: 10),
                        child: TextFormField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                width: 0.5,
                                color: black,
                              ),
                            ),
                            focusColor: purpule,
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: purpule)),
                            hintStyle: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                            filled: true,
                            fillColor: white,
                            contentPadding:
                                const EdgeInsets.fromLTRB(25, 15, 15, 15),
                            isDense: true,
                          ),
                          controller: dateController,
                          keyboardType: TextInputType.text,
                          autocorrect: false,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter date';
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(height: 25),
                      const Text(
                        "Item Image",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: DottedBorder(
                          borderType: BorderType.RRect,
                          radius: const Radius.circular(20),
                          padding: const EdgeInsets.all(6),
                          child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12)),
                            child: SizedBox(
                              height: 200,
                              child: ListView(
                                children: [
                                  Column(
                                    children: [
                                      ImagePicker(
                                        key: imagePickerKey,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.fromLTRB(35, 0, 30, 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Cancle',
                  style: TextStyle(
                      color: black, fontWeight: FontWeight.w700, fontSize: 15),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: purpule, borderRadius: BorderRadius.circular(10)),
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Save',
                  style: TextStyle(
                      color: white, fontWeight: FontWeight.w700, fontSize: 15),
                ),
              ),
            ),
          ],
        ),
      )
    ],
  );
}
