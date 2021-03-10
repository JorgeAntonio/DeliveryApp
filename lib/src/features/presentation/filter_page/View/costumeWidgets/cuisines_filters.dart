import 'package:flutter/material.dart';
//COLORS
import 'package:first_proyect/src/colors/colors.dart';

class CuisinesFilter extends StatefulWidget {
  CuisinesFilter({Key key}) : super(key: key);

  @override
  _CuisinesFilterState createState() => _CuisinesFilterState();
}

class _CuisinesFilterState extends State<CuisinesFilter> {
  bool btnAmerican = false;
  bool btnAsia = false;
  bool btnSushi = false;
  bool btnPizza = false;
  bool btnFastFood = false;
  bool btnDinner = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _roundedButtonFilter(() {
              setState(() {
                btnAmerican = !btnAmerican;
              });
            }, btnAmerican, 'American'),
            _roundedButtonFilter(() {
              setState(() {
                btnAsia = !btnAsia;
              });
            }, btnAsia, 'Asia'),
            _roundedButtonFilter(() {
              setState(() {
                btnSushi = !btnSushi;
              });
            }, btnSushi, 'Sushi'),
            _roundedButtonFilter(() {
              setState(() {
                btnPizza = !btnPizza;
              });
            }, btnPizza, 'Pizza'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _roundedButtonFilter(() {
              setState(() {
                btnFastFood = !btnFastFood;
              });
            }, btnFastFood, 'Comida rapida'),
            _roundedButtonFilter(() {
              setState(() {
                btnAsia = !btnAsia;
              });
            }, btnAsia, 'Asia'),
            _roundedButtonFilter(() {
              setState(() {
                btnDinner = !btnDinner;
              });
            }, btnDinner, 'Desayunos'),
          ],
        )
      ],
    );
  }
}

Widget _roundedButtonFilter(Function func, bool isActive, String labelText) {
  return RaisedButton(
    onPressed: func,
    elevation: 0.5,
    color: Colors.white,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
        side: BorderSide(
          color: isActive ? orange : gris,
        )),
    child: Text(
      labelText,
      style: TextStyle(color: isActive ? orange : gris),
    ),
  );
}
