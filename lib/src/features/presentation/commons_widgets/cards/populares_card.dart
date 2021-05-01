import 'package:first_proyect/src/features/presentation/commons_widgets/buttons/rounded_button.dart';
import 'package:flutter/material.dart';
//COLORS
import 'package:first_proyect/src/colors/colors.dart';

Widget popularesCards({
  BuildContext context,
  double marginTop = 0.0,
  double marginRight = 0.0,
  double marginBotton = 0.0,
  double marginLeft = 3.0,
  ImageProvider<Object> image,
  String title,
  String subtitle,
  String review,
  String ratings,
  String buttonText = '',
  bool hasActionButton,
}) {
  return Column(
    children: [
      GestureDetector(
        onTap: () {
          //Navigator.pushNamed(context, 'place-detail');
        },
        child: Container(
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
          margin: EdgeInsets.only(
              top: marginTop = 5.0,
              right: marginRight,
              bottom: marginBotton,
              left: marginLeft),
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(
                    width: 80, height: 80, fit: BoxFit.cover, image: image),
              ),
              Container(
                padding: EdgeInsets.only(left: 7.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 7.0),
                        child: Text(title,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 17.0))),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(top: 5.0),
                      child: Text(
                        subtitle,
                        style: TextStyle(
                            color: gris,
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, color: amarillo, size: 16.0),
                        Text(
                          review,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 13.0),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5.0),
                          child: Text(
                            ratings,
                            style: TextStyle(
                                color: gris,
                                fontWeight: FontWeight.w500,
                                fontSize: 13.0),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 35.0),
                          width: 110.0,
                          height: 18.0,
                          child: hasActionButton
                              ? createButton(
                                  buttonColor: orange,
                                  labelButton: buttonText,
                                  labelFontsize: 11.0)
                              : Text(''),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      )
    ],
  );
}
