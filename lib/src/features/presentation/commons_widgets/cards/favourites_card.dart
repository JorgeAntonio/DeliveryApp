import 'package:flutter/material.dart';
//COLORS
import 'package:first_proyect/src/colors/colors.dart';
//COMMONS WIDGETS
import 'package:first_proyect/src/features/presentation/commons_widgets/headers/header_text.dart';

Widget favouritesCard({
  BuildContext context,
  double marginTop = 8.0,
  double marginRight = 0.0,
  double marginBotton = 8.0,
  double marginLeft = 0.0,
  ImageProvider<Object> image,
  String title,
  String subtitle,
  String review,
  String ratings,
  String buttonText = '',
  bool hasActionButton,
  bool isFavourite = true,
}) {
  return Container(
    margin: EdgeInsets.only(
      top: marginTop,
      right: marginRight,
      left: marginLeft,
      bottom: marginBotton,
    ),
    padding: EdgeInsets.only(left: 2, right: 2, top: 10, bottom: 10),
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Color.fromRGBO(210, 211, 215, 1.0),
          offset: Offset(1, 5),
          blurRadius: 10.0,
        )
      ],
    ),
    child: Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image(width: 90, height: 90, fit: BoxFit.cover, image: image),
        ),
        Container(
          padding: EdgeInsets.only(left: 7.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 7.0),
                    child: headerText(
                        texto: title,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                  SizedBox(
                    width: 6.0,
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.bookmark,
                        size: 35.0,
                        color: isFavourite ? rosa : Colors.grey[300],
                      ),
                      onPressed: () {})
                ],
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(bottom: 5.0),
                child: headerText(
                    texto: subtitle,
                    color: gris,
                    fontWeight: FontWeight.w500,
                    fontSize: 13.0),
              ),
              Row(
                children: [
                  Icon(Icons.star, color: amarillo, size: 16.0),
                  headerText(
                      texto: review,
                      fontWeight: FontWeight.w500,
                      fontSize: 13.0),
                  headerText(
                      texto: ratings,
                      color: gris,
                      fontWeight: FontWeight.w500,
                      fontSize: 13.0),
                  /*Container(
                    margin: EdgeInsets.only(left: 25.0),
                    width: 83.0,
                    height: 18.0,
                    child: createButton(
                      buttonColor: orange,
                      labelButton: buttonText,
                      labelFontsize: 11.0,
                    ),
                  ),*/
                ],
              )
            ],
          ),
        ),
      ],
    ),
  );
}
