//Colors
import 'dart:ui';

import 'package:first_proyect/src/colors/colors.dart';
//widgets
import 'package:first_proyect/src/features/presentation/commons_widgets/backButtons/back_button.dart';
import 'package:first_proyect/src/features/presentation/commons_widgets/buttons/rounded_button.dart';
import 'package:flutter/material.dart';
//UI
import 'package:flutter/services.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.white));

    return Scaffold(
        body: ListView(
      children: [
        Stack(
          children: [
            Image(
                width: double.infinity,
                height: 300.0,
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://image.winudf.com/v2/image/Y29tLndhbGxwYXBlcndvcmxkcy5mb29kd2FsbHBhcGVyX3NjcmVlbnNob3RzXzNfZThkNGM1YmQ/screen-3.jpg?fakeurl=1&type=.jpg')),
            Container(
              margin: EdgeInsets.only(top: 50.0),
              child: backButton(context, Colors.white),
            )
          ],
        ),
        Transform.translate(
          offset: Offset(0.0, -20.0),
          child: Container(
            width: double.infinity,
            height: 500,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Center(
                child: Column(
                  children: [
                    Text("Bienvenido de nuevo",
                        style: TextStyle(
                            color: orange,
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0)),
                    Text("Ingresa con tu usuario",
                        style: TextStyle(
                            color: gris,
                            fontWeight: FontWeight.w500,
                            fontSize: 15.0)),
                    _emailInput(),
                    _passwordInput(),
                    roundedButton(
                        color: orange,
                        labelButton: 'Ingresar',
                        func: () {
                          Navigator.pushNamed(context, 'tabs');
                        }),
                    Container(
                      margin: EdgeInsets.only(top: 30.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, 'forgot-password');
                        },
                        child: Text("Olvidaste tu contraseña?",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 15.0)),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("No tienes una cuenta?",
                              style: TextStyle(
                                  color: gris,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17.0)),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, 'sign-up');
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 20.0),
                              child: Text("Registrarse",
                                  style: TextStyle(
                                      color: orange,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15.0)),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    ));
  }
}

Widget _emailInput() {
  return Container(
    margin: EdgeInsets.only(top: 20.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: Color.fromRGBO(142, 142, 147, 1.2),
        borderRadius: BorderRadius.circular(30.0)),
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: 'Correo',
          border: OutlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}

Widget _passwordInput() {
  return Container(
    margin: EdgeInsets.only(top: 20.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: Color.fromRGBO(142, 142, 147, 1.2),
        borderRadius: BorderRadius.circular(30.0)),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
          hintText: 'Contraseña',
          border: OutlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}
