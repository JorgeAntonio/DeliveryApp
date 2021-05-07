import 'package:flutter/material.dart';
//COLORS
import 'package:first_proyect/src/colors/colors.dart';
//COMPONENTS
import 'package:first_proyect/src/features/presentation/commons_widgets/backButtons/back_button.dart';
import 'package:first_proyect/src/features/presentation/commons_widgets/headers/header_text.dart';

class ProfileDetailPage extends StatefulWidget {
  ProfileDetailPage({Key key}) : super(key: key);

  @override
  _ProfileDetailPageState createState() => _ProfileDetailPageState();
}

class _ProfileDetailPageState extends State<ProfileDetailPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height * 0.6;
    return Scaffold(
      backgroundColor: bgGreyPage,
      appBar: AppBar(
        backgroundColor: white,
        title: headerText(texto: 'Editar Perfil', fontSize: 17),
        elevation: 0.4,
        leading: Builder(builder: (BuildContext context) {
          return backButton(context, Colors.black);
        }),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: EdgeInsets.only(top: 20, right: 15),
              child: headerText(
                texto: 'Hecho',
                color: orange,
                fontWeight: FontWeight.w500,
                fontSize: 17.0,
              ),
            ),
          )
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  margin: EdgeInsets.only(top: 30, left: 15, right: 15),
                  color: Colors.red,
                  width: screenWidth,
                  height: screenHeight,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
