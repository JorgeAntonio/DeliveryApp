import 'package:first_proyect/src/features/presentation/commons_widgets/buttons/rounded_button.dart';
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          direction: Axis.horizontal,
          alignment: WrapAlignment.start,
          children: [
            _createButtonFilter(() {
              setState(() {
                btnAmerican = !btnAmerican;
              });
            }, btnAmerican, 'American'),
            _createButtonFilter(() {
              setState(() {
                btnAsia = !btnAsia;
              });
            }, btnAsia, 'Asia'),
            _createButtonFilter(() {
              setState(() {
                btnSushi = !btnSushi;
              });
            }, btnSushi, 'Sushi'),
            _createButtonFilter(() {
              setState(() {
                btnPizza = !btnPizza;
              });
            }, btnPizza, 'Pizza'),
            _createButtonFilter(() {
              setState(() {
                btnFastFood = !btnFastFood;
              });
            }, btnFastFood, 'Fast food'),
            _createButtonFilter(() {
              setState(() {
                btnAsia = !btnAsia;
              });
            }, btnAsia, 'Asia'),
            _createButtonFilter(() {
              setState(() {
                btnDinner = !btnDinner;
              });
            }, btnDinner, 'Desayuno'),
          ],
        ),
      ],
    );
  }
}

Widget _createButtonFilter(Function func, bool isActive, String labelText) {
  return Container(
    width: 110,
    height: 50,
    margin: EdgeInsets.only(left: 2),
    child: createButton(
      labelButton: labelText,
      labelButtonColor: isActive ? orange : gris,
      func: func,
      buttonColor: white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
          side: BorderSide(
            color: isActive ? orange : gris,
          )),
    ),
  );
}
