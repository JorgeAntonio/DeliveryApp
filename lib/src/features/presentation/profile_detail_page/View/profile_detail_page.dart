import 'package:first_proyect/src/utils/styles/box_decoration_shadows.dart';
import 'package:flutter/material.dart';
//COLORS
import 'package:first_proyect/src/colors/colors.dart';
//COMPONENTS
import 'package:first_proyect/src/features/presentation/commons_widgets/backButtons/back_button.dart';
import 'package:first_proyect/src/features/presentation/commons_widgets/headers/header_text.dart';
//Extensions
import 'package:first_proyect/src/utils/extension/screen_size.dart';

class ProfileDetailPage extends StatefulWidget {
  ProfileDetailPage({Key key}) : super(key: key);

  @override
  _ProfileDetailPageState createState() => _ProfileDetailPageState();
}

class _ProfileDetailPageState extends State<ProfileDetailPage> {
  @override
  Widget build(BuildContext context) {
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
                  margin: EdgeInsets.only(
                    top: screenHeight.getScreenHeight(
                        context: context, multiplier: 0.3),
                    left: 15,
                    right: 15,
                  ),
                  decoration: createBoxDecorationWithShadow(),
                  width: screenWidth.getScreenWidth(context: context),
                  height: screenHeight.getScreenHeight(
                      context: context, multiplier: 1),
                  child: Column(
                    children: [],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
