import 'package:flutter/material.dart';
//Common Widgets
import 'package:first_proyect/src/features/presentation/commons_widgets/headers/header_text.dart';
//Colors
import 'package:first_proyect/src/colors/colors.dart';

Widget headerDoubleText({String textHeader, String textAction, Function func}) {
  return Container(
    child: Row(
      children: [
        headerText(texto: textHeader, fontSize: 20.0),
        Spacer(),
        GestureDetector(
          onTap: func,
          child: headerText(
              texto: textAction,
              color: orange,
              fontWeight: FontWeight.w500,
              fontSize: 15.0),
        )
      ],
    ),
  );
}
