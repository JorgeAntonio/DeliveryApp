import 'package:flutter/material.dart';
//COLORS
import 'package:first_proyect/src/colors/colors.dart';
//COMMONS WIDGET
import 'package:first_proyect/src/features/presentation/commons_widgets/headers/header_text.dart';

class EmptyOrderView extends StatelessWidget {
  const EmptyOrderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgGreyPage,
      appBar: AppBar(
        elevation: 0.5,
        leading: Text(''),
        backgroundColor: white,
        title: Container(
          padding: EdgeInsets.only(left: 75),
          child: headerText(
              texto: 'Mi Orden',
              textAlign: TextAlign.center,
              color: primaryColor,
              fontSize: 17,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                width: 216,
                height: 216,
                image: AssetImage('images/emptyOrder.png'),
              ),
              Container(
                  margin: EdgeInsets.only(top: 30),
                  child: headerText(
                      texto: 'Cesta vacía',
                      color: gris,
                      fontSize: 25,
                      fontWeight: FontWeight.bold)),
              Container(
                margin: EdgeInsets.only(top: 20.0),
                padding: EdgeInsets.symmetric(horizontal: 50.0),
                child: headerText(
                    texto:
                        'La buena comida siempre se está cocinando, ordena algo delicioso del menu.',
                    textAlign: TextAlign.center,
                    color: gris,
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
