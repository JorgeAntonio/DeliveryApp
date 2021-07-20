import 'package:first_proyect/src/utils/extension/screen_size.dart';
import 'package:flutter/material.dart';

class TextFieldsProfileDetailsView extends StatelessWidget {
  //const TextFieldsProfileDetailsView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _createTextFieldUsername(context),
        _createTextFieldImail(context),
        _createTextFieldPhone(context),
        _createTextFieldDateOfBirth(context),
        _createTextFieldDeliveryAdress(context),
      ],
    );
  }
}

Widget _createTextFieldUsername(BuildContext context) {
  return Container(
    width: screenWidth.getScreenWidth(context: context, multiplier: 0.85),
    decoration: BoxDecoration(
        border: Border(
      bottom: BorderSide(color: Theme.of(context).dividerColor),
    )),
    child: ListTile(
      title: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            hintText: 'Usuario',
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    ),
  );
}

Widget _createTextFieldImail(BuildContext context) {
  return Container(
    width: screenWidth.getScreenWidth(context: context, multiplier: 0.85),
    decoration: BoxDecoration(
        border: Border(
      bottom: BorderSide(color: Theme.of(context).dividerColor),
    )),
    child: ListTile(
      title: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintText: 'Correo',
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    ),
  );
}

Widget _createTextFieldPhone(BuildContext context) {
  return Container(
    width: screenWidth.getScreenWidth(context: context, multiplier: 0.85),
    decoration: BoxDecoration(
        border: Border(
      bottom: BorderSide(color: Theme.of(context).dividerColor),
    )),
    child: ListTile(
      title: TextField(
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
            hintText: 'Telefono',
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    ),
  );
}

Widget _createTextFieldDateOfBirth(BuildContext context) {
  return Container(
    width: screenWidth.getScreenWidth(context: context, multiplier: 0.85),
    decoration: BoxDecoration(
        border: Border(
      bottom: BorderSide(color: Theme.of(context).dividerColor),
    )),
    child: ListTile(
      title: TextField(
        keyboardType: TextInputType.datetime,
        decoration: InputDecoration(
            hintText: 'Fecha de nacimiento',
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    ),
  );
}

Widget _createTextFieldDeliveryAdress(BuildContext context) {
  return Container(
    width: screenWidth.getScreenWidth(context: context, multiplier: 0.85),
    decoration: BoxDecoration(
        border: Border(
      bottom: BorderSide(color: Theme.of(context).dividerColor),
    )),
    child: ListTile(
      title: TextField(
        keyboardType: TextInputType.streetAddress,
        maxLines: 3,
        decoration: InputDecoration(
            hintText: 'Direccion de entrega',
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    ),
  );
}
