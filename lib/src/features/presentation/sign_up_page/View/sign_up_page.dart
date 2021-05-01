import 'package:first_proyect/src/features/presentation/commons_widgets/buttons/rounded_button.dart';
import 'package:flutter/material.dart';
//Colors
import 'package:first_proyect/src/colors/colors.dart';
//COMMONS
import 'package:first_proyect/src/features/presentation/commons_widgets/backButtons/back_button.dart';
import 'package:first_proyect/src/features/presentation/commons_widgets/headers/header_text.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: Builder(builder: (BuildContext context) {
            return backButton(context, Colors.black);
          }),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(30.0),
            child: ListView(
              children: [
                headerText(
                    texto: "Crear una cuenta",
                    color: primaryColor,
                    fontSize: 30.0),
                /*Text("Crear una cuenta",
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0),
                    textAlign: TextAlign.center),*/
                _usernameInput(context),
                _emailInput(context),
                _phoneInput(context),
                _dateOfBirthInput(context),
                _passwordInput(context),
                createButton(
                    buttonColor: orange,
                    labelButton: 'Registrarse',
                    func: () {}),
                Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
                    child: Text(
                        'Al registrarse usted acepta todos los Terminos y Condiciones',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 13.0)))
              ],
            ),
          ),
        ));
  }
}

Widget _usernameInput(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 40.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: bgInputs, borderRadius: BorderRadius.circular(40.0)),
    child: TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          hintText: 'Nombre de usuario',
          border: OutlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}

Widget _emailInput(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 10.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: bgInputs, borderRadius: BorderRadius.circular(40.0)),
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: 'Correo',
          border: OutlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}

Widget _phoneInput(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 10.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: bgInputs, borderRadius: BorderRadius.circular(40.0)),
    child: TextField(
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
          hintText: 'Telefono',
          border: OutlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}

Widget _dateOfBirthInput(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 10.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: bgInputs, borderRadius: BorderRadius.circular(40.0)),
    child: TextField(
      keyboardType: TextInputType.datetime,
      decoration: InputDecoration(
          hintText: 'Fecha de nacimiento',
          border: OutlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}

Widget _passwordInput(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 10.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: bgInputs, borderRadius: BorderRadius.circular(40.0)),
    child: TextField(
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      decoration: InputDecoration(
          hintText: 'Contraseña',
          border: OutlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}
