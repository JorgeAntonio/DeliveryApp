import 'package:first_proyect/src/features/presentation/commons_widgets/buttons/rounded_button.dart';
import 'package:flutter/material.dart';
//COLORS
import 'package:first_proyect/src/colors/colors.dart';
//COMMONS WIDGET
import 'package:first_proyect/src/features/presentation/commons_widgets/headers/header_text.dart';
//COMPONENTS
import 'package:first_proyect/src/features/presentation/tabs/my_order_tab/View/components/empty_order_view.dart';

class MyOrderTab extends StatefulWidget {
  MyOrderTab({Key? key}) : super(key: key);

  @override
  _MyOrderTabState createState() => _MyOrderTabState();
}

class _MyOrderTabState extends State<MyOrderTab> {
  final emptyOrderState = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgGreyPage,
        body: emptyOrderState
            ? EmptyOrderView()
            : CustomScrollView(
                slivers: [
                  SliverAppBar(
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
                      )),
                  SliverList(
                      delegate: SliverChildListDelegate([
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(
                        children: [
                          _orders(context),
                          SizedBox(height: 30),
                          _checkoutResume(context),
                        ],
                      ),
                    ),
                  ]))
                ],
              ));
  }
}

Widget _orders(BuildContext context) {
  return Column(
    children: [
      _cardOrder(context),
    ],
  );
}

Widget _cardOrder(BuildContext context) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10.0),
    margin: EdgeInsets.symmetric(vertical: 10.0),
    width: double.infinity,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromRGBO(248, 248, 248, 1.0),
        boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(210, 211, 215, 1.0),
              spreadRadius: 1.0,
              blurRadius: 4.0)
        ]),
    child: Column(
      children: [
        Row(
          children: [_cardOrderTopContent(context)],
        ),
        Column(
          children: [
            _items(context),
            _items(context),
            _items(context),
            _items(context),
          ],
        ),
        _moreContent(context)
      ],
    ),
  );
}

Widget _cardOrderTopContent(BuildContext context) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 7.0, bottom: 7.0, right: 20.0),
          child: headerText(
              texto: 'Little Creatures - Club Street',
              fontSize: 20.0,
              fontWeight: FontWeight.bold),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.location_on, color: gris, size: 16.0),
              headerText(
                  texto: '87 Botsford Circle Apt',
                  color: gris,
                  fontWeight: FontWeight.w500,
                  fontSize: 14.0),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  width: 110.0,
                  height: 20.0,
                  child: createButton(
                    context: context,
                    labelButton: 'Delivery gratis',
                    buttonColor: orange,
                    labelFontsize: 11.0,
                  ))
            ],
          ),
        )
      ],
    ),
  );
}

Widget _items(context) {
  return Container(
    decoration: BoxDecoration(
        border:
            Border(bottom: BorderSide(color: Theme.of(context).dividerColor))),
    child: ListTile(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          headerText(
              texto: 'Especial Gajamanas Bhel',
              color: orange,
              fontWeight: FontWeight.w300,
              fontSize: 15.0),
          headerText(
              texto: 'Mixed vegetable, Chicken Egg',
              color: gris,
              fontWeight: FontWeight.w300,
              fontSize: 12.0),
        ],
      ),
      trailing: headerText(
          texto: 'S/ 17.20',
          color: gris,
          fontWeight: FontWeight.w300,
          fontSize: 15.0),
    ),
  );
}

Widget _moreContent(context) {
  return Container(
    child: ListTile(
      title: headerText(
          texto: 'Agrega más items',
          color: rosa,
          fontWeight: FontWeight.w600,
          fontSize: 17.0),
    ),
  );
}

Widget _checkoutResume(context) {
  return Container(
    padding: EdgeInsets.all(10.0),
    margin: EdgeInsets.symmetric(vertical: 10),
    width: double.infinity,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: white,
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(210, 211, 215, 1.0),
            spreadRadius: 1.0,
            blurRadius: 4.0,
          )
        ]),
    child: Column(
      children: [
        _itemsCheckOutResume(
            title: 'Subtototal', value: 's/ 93.40', context: context),
        _itemsCheckOutResume(
            title: 'Impuestos', value: 's/ 3.00', context: context),
        _itemsCheckOutResume(
            title: 'Delivery', value: 'Gratis', context: context),
        _bottonCheckout(context)
      ],
    ),
  );
}

Widget _itemsCheckOutResume(
    {title: String, value: String, required BuildContext context}) {
  return Container(
    decoration: BoxDecoration(
        border:
            Border(bottom: BorderSide(color: Theme.of(context).dividerColor))),
    child: ListTile(
      title:
          headerText(texto: title, fontWeight: FontWeight.w400, fontSize: 15.0),
      trailing:
          headerText(texto: value, fontWeight: FontWeight.w500, fontSize: 15.0),
    ),
  );
}

Widget _bottonCheckout(context) {
  return Container(
    width: double.infinity,
    height: 45.0,
    margin: EdgeInsets.only(top: 10.0),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0.5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        primary: orange,
      ),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(),
          Container(
            margin: EdgeInsets.only(left: 50.0),
            child: headerText(
                texto: 'Ordenar',
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: white),
          ),
          Container(
            child: headerText(
                texto: 'S/ 95.49',
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: white),
          )
        ],
      ),
    ),
  );
}
