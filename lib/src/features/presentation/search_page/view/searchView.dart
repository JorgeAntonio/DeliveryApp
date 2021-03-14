import 'package:flutter/material.dart';
//Colors
import 'package:first_proyect/src/colors/colors.dart';
//COMMONS WIDGET
import 'package:first_proyect/src/features/presentation/commons_widgets/headers/header_double.dart';
import 'package:first_proyect/src/features/presentation/commons_widgets/headers/header_text.dart';
import 'package:first_proyect/src/features/presentation/commons_widgets/cards/vertical_card.dart';
import 'package:first_proyect/src/features/presentation/commons_widgets/cards/populares_card.dart';
//Swiper
import 'package:flutter_swiper/flutter_swiper.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
                icon: Icon(Icons.close, color: Colors.black, size: 40.0),
                onPressed: () => Navigator.pop(context)),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 20.0),
                      alignment: Alignment.centerLeft,
                      child: headerText(
                          texto: "Buscar",
                          color: Colors.black,
                          fontSize: 30.0)),
                  _searchInput(context),
                  SizedBox(height: 20.0),
                  headerDoubleText(
                      textHeader: "Busquedas recientes",
                      textAction: "Limpiar todo"),
                  SizedBox(height: 20.0),
                  _sliderRecentSearch(),
                  SizedBox(height: 20.0),
                  headerDoubleText(
                      textHeader: 'Recomendado para ti', textAction: ''),
                  SizedBox(height: 20.0),
                  popularesCards(
                      image: NetworkImage(
                          'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/1ab8be12159515.5625825345ad2.jpg'),
                      title: 'Andy & Cindy dinners',
                      subtitle: '87 Bootford Circle Apt',
                      review: '4.8',
                      ratings: '(233 ratings)',
                      hasActionButton: false),
                  popularesCards(
                      image: NetworkImage(
                          'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/1ab8be12159515.5625825345ad2.jpg'),
                      title: 'Andy & Cindy dinners',
                      subtitle: '87 Bootford Circle Apt',
                      review: '4.8',
                      ratings: '(233 ratings)',
                      hasActionButton: false),
                  popularesCards(
                      image: NetworkImage(
                          'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/1ab8be12159515.5625825345ad2.jpg'),
                      title: 'Andy & Cindy dinners',
                      subtitle: '87 Bootford Circle Apt',
                      review: '4.8',
                      ratings: '(233 ratings)',
                      buttonText: 'Delivery',
                      hasActionButton: false),
                ],
              ),
            )
          ]))
        ],
      ),
    );
  }
}

Widget _searchInput(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 20.0),
    height: 40.0,
    padding: EdgeInsets.only(left: 5.0),
    decoration: BoxDecoration(
        color: Color.fromRGBO(142, 142, 147, 1.2),
        borderRadius: BorderRadius.circular(20.0)),
    child: TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(5),
          prefixIcon: Icon(Icons.search, color: gris),
          hintText: 'Buscar',
          border: OutlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}

Widget _sliderRecentSearch() {
  return Container(
    margin: EdgeInsets.only(top: 5.0),
    height: 190.0,
    child: Swiper(
        itemCount: 4,
        layout: SwiperLayout.DEFAULT,
        itemBuilder: (BuildContext context, int index) {
          return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return cardVertical(
                    context: context,
                    width: 160.0,
                    height: 120.0,
                    title: "Andy & Cindy Dinner",
                    subtitle: "Calle Las Camelias 38",
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1482049016688-2d3e1b311543?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8Zm9vZHxlbnwwfDF8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'"));
              });
        }),
  );
}
