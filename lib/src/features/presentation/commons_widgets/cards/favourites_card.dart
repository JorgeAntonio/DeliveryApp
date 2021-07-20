import 'package:flutter/material.dart';
//COLORS
import 'package:first_proyect/src/colors/colors.dart';
//COMMONS WIDGETS
import 'package:first_proyect/src/features/presentation/commons_widgets/headers/header_text.dart';
//Utils
import 'package:first_proyect/src/utils/styles/box_decoration_shadows.dart';

Widget favouritesCard({
  required BuildContext context,
  double marginTop = 8.0,
  double marginRight = 0.0,
  double marginBotton = 8.0,
  double marginLeft = 0.0,
  required ImageProvider<Object> image,
  required String title,
  required String subtitle,
  required String review,
  required String ratings,
  String buttonText = '',
  required bool hasActionButton,
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
    decoration:
        createBoxDecorationWithShadow(borderRadius: BorderRadius.circular(10)),
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
                ],
              )
            ],
          ),
        ),
      ],
    ),
  );
}
