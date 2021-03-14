import 'package:flutter/material.dart';
//COMMONS WIDGET
import 'package:first_proyect/src/features/presentation/commons_widgets/headers/header_text.dart';
import 'package:first_proyect/src/features/presentation/commons_widgets/backButtons/back_button.dart';

class CollectionDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 230,
            backgroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Image(
                      width: double.infinity,
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MzF8fHxlbnwwfHx8&w=1000&q=80')),
                  Container(
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(0, 0, 0, 1.3),
                          borderRadius: BorderRadius.circular(10)),
                      width: double.infinity,
                      height: double.infinity),
                  Center(
                      child: headerText(
                          texto: 'Asia \n Restaurante',
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0,
                          textAlign: TextAlign.center)),
                ],
              ),
            ),
            leading: Builder(builder: (BuildContext context) {
              return backButton(context, Colors.white);
            }),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.symmetric(vertical: 15),
                    child: headerText(
                        texto: '128 lugares',
                        color: Color.fromRGBO(51, 58, 77, 1.0),
                        fontWeight: FontWeight.w600,
                        fontSize: 17),
                  )
                ],
              ),
            )
          ]))
        ],
      ),
    );
  }
}
