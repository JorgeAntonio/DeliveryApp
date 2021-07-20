//MATERIAL
import 'package:first_proyect/src/features/presentation/commons_widgets/headers/header_text.dart';
import 'package:flutter/material.dart';

const shape = StadiumBorder();

Widget createButton(
    {required BuildContext context,
    double width = 350.0,
    double height = 45.0,
    double radius = 20.0,
    bool isWithIcon = false,
    ImageProvider<Object>? icon,
    Color labelButtonColor = Colors.white,
    double labelFontsize = 15.0,
    Color buttonColor = Colors.blue,
    OutlinedBorder shape = shape,
    Function()? func,
    required String labelButton}) {
  return Container(
    width: width,
    height: height,
    margin: EdgeInsets.only(top: 20.0),
    child: isWithIcon
        ? _raisedButtonWithIcon(radius, icon, labelButton, labelButtonColor,
            labelFontsize, buttonColor, shape, func)
        : _raisedButtonNoIcon(radius, labelButton, labelButtonColor,
            labelFontsize, buttonColor, shape, func),
  );
}

Widget _raisedButtonWithIcon(
    double radius,
    ImageProvider<Object>? icon,
    String labelButton,
    Color labelButtonColor,
    double labelFontsize,
    Color color,
    OutlinedBorder shape,
    Function()? func) {
  return ElevatedButton(
    onPressed: func,
    style: ElevatedButton.styleFrom(
      shape: shape,
      primary: color,
      elevation: 0.5,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(
          image: icon ?? AssetImage('images/abouticon.png'),
          width: 20.0,
          height: 20.0,
        ),
        Container(
          margin: EdgeInsets.only(left: 10.0),
          child: headerText(
            texto: labelButton,
            color: labelButtonColor,
            fontSize: labelFontsize,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    ),
  );
}

Widget _raisedButtonNoIcon(
  double radius,
  String labelButton,
  Color labelButtonColor,
  double labelFontsize,
  Color color,
  OutlinedBorder shape,
  Function()? func,
) {
  return ElevatedButton(
    onPressed: func,
    style: ElevatedButton.styleFrom(
      shape: shape,
      primary: color,
      elevation: 0.5,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(left: 10.0),
          child: headerText(
            texto: labelButton,
            color: labelButtonColor,
            fontSize: labelFontsize,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    ),
  );
}
