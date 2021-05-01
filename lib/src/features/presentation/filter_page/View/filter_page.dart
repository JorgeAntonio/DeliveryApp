import 'package:flutter/material.dart';
//COMMONS WIDGET
import 'package:first_proyect/src/features/presentation/commons_widgets/headers/header_text.dart';
//COLORS
import 'package:first_proyect/src/colors/colors.dart';
//COMPONENTS WIDGET
import 'package:first_proyect/src/features/presentation/filter_page/View/components/cuisines_filters.dart';
import 'package:first_proyect/src/features/presentation/filter_page/View/components/list_tile_checkout.dart';
import 'package:first_proyect/src/features/presentation/filter_page/View/components/price_filter.dart';

class FilterPage extends StatefulWidget {
  FilterPage({Key key}) : super(key: key);

  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  //SORT BY BOOLEANS
  bool topRated = false;
  bool nearMe = false;
  bool costHighToLow = false;
  bool costLowToHigh = false;
  bool mostPopular = false;

  //FILTER BOOLEANS
  bool openNow = false;
  bool creditCards = false;
  bool alcoholServed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 15.0, bottom: 15.0, left: 15.0),
              child: headerText(
                  texto: 'Cocinas',
                  color: gris,
                  fontWeight: FontWeight.w600,
                  fontSize: 18.0),
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              child: CuisinesFilter(),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 15.0, bottom: 15.0, left: 15.0),
              child: headerText(
                  texto: 'ORDENAR PO',
                  color: gris,
                  fontWeight: FontWeight.w600,
                  fontSize: 18.0),
            ),
            _sortByContainer(),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 15.0, bottom: 15.0, left: 15.0),
              child: headerText(
                  texto: 'FILTRAR',
                  color: gris,
                  fontWeight: FontWeight.w600,
                  fontSize: 18.0),
            ),
            _filterContainer(),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 15.0, bottom: 15.0, left: 15.0),
              child: headerText(
                  texto: 'PRECIO',
                  color: gris,
                  fontWeight: FontWeight.w600,
                  fontSize: 18.0),
            ),
            PriceFilter(),
          ]))
        ],
      ),
    );
  }

  Widget _sortByContainer() {
    return Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            ListTileCheck(
              texto: 'Top votos',
              isActive: topRated,
              func: () {
                setState(() => topRated = !topRated);
              },
            ),
            ListTileCheck(
              texto: 'Lugares cercanos',
              isActive: nearMe,
              func: () {
                setState(() => nearMe = !nearMe);
              },
            ),
            ListTileCheck(
              texto: 'Precio alto a bajo',
              isActive: costHighToLow,
              func: () {
                setState(() => costHighToLow = !costHighToLow);
              },
            ),
            ListTileCheck(
              texto: 'Precio bajo a alto',
              isActive: costLowToHigh,
              func: () {
                setState(() => costLowToHigh = !costLowToHigh);
              },
            ),
            ListTileCheck(
              texto: 'Más populares',
              isActive: mostPopular,
              func: () {
                setState(() => mostPopular = !mostPopular);
              },
            ),
          ],
        ));
  }

  Widget _filterContainer() {
    return Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            ListTileCheck(
              texto: 'Abierto ahora',
              isActive: openNow,
              func: () {
                setState(() => openNow = !openNow);
              },
            ),
            ListTileCheck(
              texto: 'Tarjetas de creditos',
              isActive: creditCards,
              func: () {
                setState(() => creditCards = !creditCards);
              },
            ),
            ListTileCheck(
              texto: 'Alcohol servido',
              isActive: alcoholServed,
              func: () {
                setState(() => alcoholServed = !alcoholServed);
              },
            ),
          ],
        ));
  }
}

Widget _appBar(BuildContext context) {
  return AppBar(
    elevation: 0.5,
    backgroundColor: Colors.white,
    centerTitle: true,
    title: headerText(
      texto: 'Filtros',
      fontWeight: FontWeight.w600,
    ),
    leading: Container(
      child: Padding(
        padding: EdgeInsets.only(top: 20.0, left: 8.0),
        child: headerText(
          texto: 'Limpiar',
          fontWeight: FontWeight.w500,
          fontSize: 14.0,
        ),
      ),
    ),
    actions: [
      GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          padding: EdgeInsets.only(top: 20.0, right: 8.0),
          child: headerText(
              texto: 'Hecho',
              color: orange,
              fontWeight: FontWeight.w500,
              fontSize: 14.0),
        ),
      ),
    ],
  );
}
