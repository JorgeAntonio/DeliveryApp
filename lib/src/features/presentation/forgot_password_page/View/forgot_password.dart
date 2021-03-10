//COLORS
import 'package:first_proyect/src/colors/colors.dart';
//COMMON WIDGETS
import 'package:first_proyect/src/features/presentation/commons_widgets/alerts/alert_dialog.dart';
import 'package:first_proyect/src/features/presentation/commons_widgets/backButtons/back_button.dart';
import 'package:first_proyect/src/features/presentation/commons_widgets/headers/header_text.dart';
import 'package:first_proyect/src/features/presentation/commons_widgets/buttons/rounded_button.dart';
//MATERIAL
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
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
                  texto: 'Olvidaste tu contraseña?',
                  color: primaryColor,
                  fontSize: 30.0),
              /*Text("Olvidaste tu contraseña?",
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0)),*/
              Container(
                padding: EdgeInsets.all(10.0),
                child: Text(
                    "Por favor, ingresa tu direccion correo electronico. Recibirás un link a tu correo para crear una nueva contraseña",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 15.0)),
              ),
              _emailInput(),
              roundedButton(
                  labelButton: 'Enviar',
                  color: orange,
                  func: () => _showAlerta(context)),
              //_sendButton(context)
            ],
          ),
        ),
      ),
    );
  }
}

Widget _emailInput() {
  return Container(
    margin: EdgeInsets.only(top: 40.0),
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

void _showAlerta(BuildContext context) {
  showAlertDialog(
      context,
      NetworkImage(
          'https://www.shareicon.net/data/2015/12/02/681185_locked_512x512.png'),
      'Tu contraseña se ha reestablecido',
      'Pronto recibiras un email con un codigo para establecer tu nueva contraseña',
      roundedButton(
          labelButton: 'Hecho',
          color: orange,
          func: () {
            Navigator.pushNamed(context, 'login');
          }));
  //doneButton(context, 'Hecho'));
}

//
//Widget del boton enviar
/*Widget _sendButton(BuildContext context) {
  return Container(
    width: 350.0,
    height: 45.0,
    margin: EdgeInsets.only(top: 30.0),
    child: RaisedButton(
      onPressed: () {
        _showAlerta(context);
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      color: Theme.of(context).accentColor,
      child: Text(
        'Enviar',
        style: TextStyle(color: Colors.white, fontSize: 17.0),
      ),
    ),
  );
}*/
