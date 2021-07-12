import 'package:flutter/material.dart';

const boxShadows = [
  BoxShadow(
    color: Color.fromRGBO(210, 211, 215, 1.0),
    offset: Offset(1, 5),
    blurRadius: 10.0,
  )
];

Decoration createBoxDecorationWithShadow(
    {Color containerColor = Colors.white,
    List<BoxShadow> boxShadows = boxShadows}) {
  return BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: containerColor,
    boxShadow: boxShadows,
  );
}
