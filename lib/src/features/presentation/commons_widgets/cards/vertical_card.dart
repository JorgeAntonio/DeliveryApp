import 'package:flutter/material.dart';
//Colors
import 'package:first_proyect/src/colors/colors.dart';
//Commons widgets
import 'package:first_proyect/src/features/presentation/commons_widgets/headers/header_text.dart';

Widget cardVertical(
    {BuildContext context,
    double width,
    double height,
    ImageProvider<Object> image,
    String title,
    String subtitle}) {
  return Container(
    margin: EdgeInsets.all(5.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image(
              width: width, height: height, fit: BoxFit.cover, image: image),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 5.0),
              child: headerText(
                  texto: title, fontWeight: FontWeight.w500, fontSize: 17.0),
            ),
            Container(
              margin: EdgeInsets.only(top: 5.0),
              child: headerText(
                  texto: subtitle,
                  color: gris,
                  fontWeight: FontWeight.w400,
                  fontSize: 13.0),
            ),
          ],
        )
      ],
    ),
  );
}
