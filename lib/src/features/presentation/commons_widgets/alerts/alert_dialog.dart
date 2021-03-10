import 'package:first_proyect/src/colors/colors.dart';
import 'package:flutter/material.dart';
//Header Text
import '../headers/header_text.dart';

void showAlertDialog(BuildContext context, ImageProvider<Object> imagePath,
    String headerTittle, String headerSubTittle, Widget doneButton) {
  showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          content: Container(
            height: 400.0,
            child: Column(
              children: [
                Image(
                  image: imagePath,
                  width: 130.0,
                  height: 130.0,
                ),
                Container(
                    margin: EdgeInsets.all(15.0),
                    child: headerText(
                        texto: headerTittle,
                        color: primaryColor,
                        fontSize: 20.0)),
                Container(
                  margin: EdgeInsets.all(15.0),
                  child: Text(headerSubTittle,
                      style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 15.0)),
                ),
                doneButton
              ],
            ),
          ),
        );
      });
}
