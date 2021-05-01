import 'package:flutter/material.dart';
//COLORS
import 'package:first_proyect/src/colors/colors.dart';
//COMMONS WIDGETS
import 'package:first_proyect/src/features/presentation/commons_widgets/headers/header_text.dart';
import 'package:first_proyect/src/features/presentation/commons_widgets/cards/favourites_card.dart';

class FavouriteTab extends StatefulWidget {
  FavouriteTab({Key key}) : super(key: key);

  @override
  _FavouriteTabState createState() => _FavouriteTabState();
}

class _FavouriteTabState extends State<FavouriteTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgGreyPage,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: Text(''),
            backgroundColor: white,
            title: headerText(
                texto: 'Mis Favoritos',
                color: primaryColor,
                fontSize: 17,
                fontWeight: FontWeight.w600),
            centerTitle: true,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      favouritesCard(
                        image: NetworkImage(
                            'https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MzF8fHxlbnwwfHx8&w=1000&q=80'),
                        title: 'Andy & Cindy dinners',
                        subtitle: '87 Bootford Circle Apt',
                        review: '4.8',
                        ratings: '(233 ratings)',
                        buttonText: 'Delivery',
                        hasActionButton: true,
                        isFavourite: true,
                      ),
                      favouritesCard(
                        image: NetworkImage(
                            'https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MzF8fHxlbnwwfHx8&w=1000&q=80'),
                        title: 'Andy & Cindy dinners',
                        subtitle: '87 Bootford Circle Apt',
                        review: '4.8',
                        ratings: '(233 ratings)',
                        buttonText: 'Delivery',
                        hasActionButton: true,
                        isFavourite: false,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
