import 'package:flutter/material.dart';
//COMMONS WIDGETS
import 'package:first_proyect/src/features/presentation/commons_widgets/backButtons/back_button.dart';
import 'package:first_proyect/src/features/presentation/commons_widgets/headers/header_text.dart';

class CollectionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            title: headerText(texto: 'Colecciones', fontSize: 17),
            leading: Builder(builder: (BuildContext context) {
              return backButton(context, Colors.black);
            }),
          ),
          SliverPadding(
            padding: EdgeInsets.only(left: 10.0),
            sliver: SliverGrid.count(
              crossAxisCount: 2,
              mainAxisSpacing: 10.0,
              children: [
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget _card(BuildContext context) {
  return GestureDetector(
    onTap: () {},
    child: Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image(
              width: 165,
              height: 190,
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MzF8fHxlbnwwfHx8&w=1000&q=80')),
        ),
        Container(
          width: 165,
          height: 190,
          decoration: BoxDecoration(
              color: Color.fromRGBO(0, 0, 0, 1.3),
              borderRadius: BorderRadius.circular(10)),
        ),
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(bottom: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              headerText(
                  texto: 'Asia',
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
              headerText(
                  texto: '128 Lugares',
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w200),
            ],
          ),
        ),
      ],
    ),
  );
}
