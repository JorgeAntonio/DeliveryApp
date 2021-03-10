//MATERIAL
import 'package:flutter/material.dart';
//UIS
import 'dart:ui';
//COLORS
import 'package:first_proyect/src/colors/colors.dart';
//COMMONS
import 'package:first_proyect/src/features/presentation/commons_widgets/buttons/rounded_button.dart';
import 'package:first_proyect/src/features/presentation/commons_widgets/headers/header_text.dart';
//SERVICES
import 'package:flutter/services.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.white));
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://mfiles.alphacoders.com/353/35326.jpg'))),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
            child: Container(
              color: Colors.black.withOpacity(0.3),
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: headerText(
                  texto: 'Delivery, tu comida favorita a tu puerta',
                  color: Colors.white,
                  fontSize: 45.0),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),
              child: Text(
                'Encontramos tu restaurant favorito cerca a ti',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 17.0),
              ),
            ),
            roundedButton(
                labelButton: 'Log In',
                color: orange,
                func: () {
                  Navigator.pushNamed(context, 'login');
                }),
            roundedButton(
                labelButton: 'Ingresar con Facebook',
                color: fbButtonColor,
                isWithIcon: true,
                icon: NetworkImage(
                    'https://i.pinimg.com/originals/b1/c0/1d/b1c01d2be1b5c2ab7c76cfc99adfee53.png'),
                func: () => print('gotofacebook'))
            //AQUI VA EL BOTON AZUL
          ],
        )
      ],
    ));
  }
}
