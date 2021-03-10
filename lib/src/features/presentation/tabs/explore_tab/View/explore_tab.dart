import 'package:first_proyect/src/features/presentation/commons_widgets/cards/populares_card.dart';
import 'package:flutter/material.dart';
//Colors
import 'package:first_proyect/src/colors/colors.dart';
//Swiper
import 'package:flutter_swiper/flutter_swiper.dart';
//COMMONS
import 'package:first_proyect/src/features/presentation/commons_widgets/headers/header_text.dart';

class ExploreTab extends StatelessWidget {
  const ExploreTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CustomScrollView(slivers: [
      SliverList(
          delegate: SliverChildListDelegate([
        Container(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            children: [
              _topBar(context),
              Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  alignment: Alignment.centerLeft,
                  child: headerText(
                      texto: "Descubre nuevos lugares",
                      color: Colors.black,
                      fontSize: 30.0)),
              _sliderCards(),
              _headers(context, 'Popular esta semana', 'Mostrar todo'),
              popularesCards(
                  image: NetworkImage(
                      'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/1ab8be12159515.5625825345ad2.jpg'),
                  title: 'Andy & Cindy dinners',
                  subtitle: '87 Bootford Circle Apt',
                  review: '4.8',
                  ratings: '(233 ratings)',
                  buttonText: 'Delivery',
                  hasActionButton: true),
              popularesCards(
                  image: NetworkImage(
                      'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/1ab8be12159515.5625825345ad2.jpg'),
                  title: 'Andy & Cindy dinners',
                  subtitle: '87 Bootford Circle Apt',
                  review: '4.8',
                  ratings: '(233 ratings)',
                  buttonText: 'Delivery',
                  hasActionButton: true),
              popularesCards(
                  image: NetworkImage(
                      'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/1ab8be12159515.5625825345ad2.jpg'),
                  title: 'Andy & Cindy dinners',
                  subtitle: '87 Bootford Circle Apt',
                  review: '4.8',
                  ratings: '(233 ratings)',
                  buttonText: 'Delivery',
                  hasActionButton: true),
              SizedBox(
                height: 10.0,
              ),
              _headers(context, 'Collections', 'Mostrar todo'),
              _sliderCollections()
            ],
          ),
        )
      ]))
    ]));
  }
}

Widget _topBar(BuildContext context) {
  return Row(
    children: [
      GestureDetector(
        onTap: () => Navigator.pushNamed(context, 'search'),
        child: Container(
          width: 270,
          padding: EdgeInsets.all(10.0),
          margin: EdgeInsets.only(left: 16),
          decoration: BoxDecoration(
              border: Border.all(color: Color.fromRGBO(234, 236, 239, 1.0)),
              borderRadius: BorderRadius.circular(20.0)),
          child: Row(
            children: [
              Icon(
                Icons.search,
                size: 20.0,
                color: gris,
              ),
              Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text('Buscar',
                      style: TextStyle(color: gris, fontSize: 17.0)))
            ],
          ),
        ),
      ),
      Container(
          width: 40.0,
          height: 40.0,
          margin: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
              color: Color.fromRGBO(209, 209, 214, 1.0),
              borderRadius: BorderRadius.circular(30)),
          child: IconButton(
              icon: Icon(
                Icons.filter_list,
                size: 25.0,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pushNamed(context, 'filter');
              }))
    ],
  );
}

Widget _sliderCards() {
  return Container(
    height: 350.0,
    child: Swiper(
      itemCount: 4,
      layout: SwiperLayout.DEFAULT,
      itemBuilder: (BuildContext context, int index) {
        return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return _tarjeta(context);
            });
      },
    ),
  );
}

Widget _tarjeta(BuildContext context) {
  return Container(
    margin: EdgeInsets.all(5.0),
    child: Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image(
              width: 210.0,
              height: 250.0,
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1482049016688-2d3e1b311543?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8Zm9vZHxlbnwwfDF8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 5.0),
              child: Text('Panaderia Gissela',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17.0)),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text('Av. Abelardo Quiñones, San Juan',
                  style: TextStyle(
                      color: gris,
                      fontWeight: FontWeight.w500,
                      fontSize: 13.0)),
            ),
            Row(
              children: [
                Icon(Icons.star, color: amarillo, size: 16),
                Text('4.8',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 13.0)),
                Text("(233 ratings)",
                    style: TextStyle(
                        color: gris,
                        fontWeight: FontWeight.w500,
                        fontSize: 13.0)),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  width: 80.0,
                  height: 18.0,
                  child: RaisedButton(
                      elevation: 0.5,
                      shape: StadiumBorder(),
                      color: orange,
                      textColor: Colors.white,
                      onPressed: () {},
                      child:
                          Text('Delivery', style: TextStyle(fontSize: 11.0))),
                )
              ],
            )
          ],
        )
      ],
    ),
  );
}

Widget _headers(BuildContext context, String textHeader, String textAction) {
  return Row(
    children: [
      Container(
        alignment: Alignment.centerLeft,
        child:
            headerText(texto: textHeader, color: Colors.black, fontSize: 20.0),
      ),
      Spacer(),
      GestureDetector(
        child: Row(
          children: [
            Text(
              textAction,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 15.0),
            ),
            Icon(Icons.play_arrow)
          ],
        ),
      ),
    ],
  );
}

Widget _sliderCollections() {
  return Container(
    height: 200.0,
    child: Swiper(
      itemCount: 4,
      layout: SwiperLayout.DEFAULT,
      itemBuilder: (BuildContext context, int index) {
        return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return _tarjetaCollection(context);
            });
      },
    ),
  );
}

Widget _tarjetaCollection(BuildContext context) {
  return Container(
    margin: EdgeInsets.all(10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image(
              width: 250,
              height: 150,
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/1ab8be12159515.5625825345ad2.jpg')),
        ),
      ],
    ),
  );
}
