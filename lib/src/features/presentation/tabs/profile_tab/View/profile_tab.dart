import 'package:flutter/material.dart';
//COLORS
import 'package:first_proyect/src/colors/colors.dart';
//COMMONS WIDGETS
import 'package:first_proyect/src/features/presentation/commons_widgets/headers/header_text.dart';

class ProfileTab extends StatefulWidget {
  ProfileTab({Key? key}) : super(key: key);

  @override
  _ProfileTabState createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'profile-detail'),
            child: _header(),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: _contentProfile(),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _header() {
  return Container(
    height: 250,
    color: bgGreyPage,
    padding: EdgeInsets.all(30),
    child: Row(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(
              'https://images.unsplash.com/photo-1520223297779-95bbd1ea79b7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=966&q=80'),
          radius: 50,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 15.0),
              child: Row(
                children: [
                  headerText(
                      texto: 'Cameron Cook',
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                  IconButton(
                      icon: Icon(
                        Icons.chevron_right,
                        color: gris,
                      ),
                      onPressed: () {})
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15.0),
              height: 25,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: rosa,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Row(
                  children: [
                    Image(
                        image: AssetImage('images/crown.png'),
                        width: 16,
                        height: 16,
                        color: white,
                        fit: BoxFit.cover),
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      child: headerText(
                        texto: 'VIP Member',
                        color: white,
                        fontSize: 11,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        )
      ],
    ),
  );
}

Widget _contentProfile() {
  return Container(
    padding: EdgeInsets.only(left: 10, right: 10),
    child: Column(
      children: [
        ListTile(
          leading: Image(
            image: AssetImage('images/noti.png'),
            width: 29.0,
            height: 29.0,
            fit: BoxFit.cover,
          ),
          title:
              headerText(texto: 'Notificaciones', fontWeight: FontWeight.w400),
          trailing: Icon(
            Icons.chevron_right,
            color: gris,
          ),
        ),
        ListTile(
          leading: Image(
            image: AssetImage('images/payicon.png'),
            width: 29.0,
            height: 29.0,
            fit: BoxFit.cover,
          ),
          title:
              headerText(texto: 'Formas de pago', fontWeight: FontWeight.w400),
          trailing: Icon(
            Icons.chevron_right,
            color: gris,
          ),
        ),
        ListTile(
          leading: Image(
            image: AssetImage('images/rewardicon.png'),
            width: 29.0,
            height: 29.0,
            fit: BoxFit.cover,
          ),
          title: headerText(texto: 'Historial', fontWeight: FontWeight.w400),
          trailing: Icon(
            Icons.chevron_right,
            color: gris,
          ),
        ),
        ListTile(
          leading: Image(
            image: AssetImage('images/promoicon.png'),
            width: 29.0,
            height: 29.0,
            fit: BoxFit.cover,
          ),
          title: headerText(texto: 'Promociones', fontWeight: FontWeight.w400),
          trailing: Icon(
            Icons.chevron_right,
            color: gris,
          ),
        ),
        SizedBox(height: 20),
        ListTile(
          leading: Image(
            image: AssetImage('images/settingicon.png'),
            width: 29.0,
            height: 29.0,
            fit: BoxFit.cover,
          ),
          title:
              headerText(texto: 'Configuraciones', fontWeight: FontWeight.w400),
          trailing: Icon(
            Icons.chevron_right,
            color: gris,
          ),
        ),
        ListTile(
          leading: Image(
            image: AssetImage('images/inviteicon.png'),
            width: 29.0,
            height: 29.0,
            fit: BoxFit.cover,
          ),
          title:
              headerText(texto: 'Invitar amigos', fontWeight: FontWeight.w400),
          trailing: Icon(
            Icons.chevron_right,
            color: gris,
          ),
        ),
        ListTile(
          leading: Image(
            image: AssetImage('images/helpicon.png'),
            width: 29.0,
            height: 29.0,
            fit: BoxFit.cover,
          ),
          title:
              headerText(texto: 'Centro de ayuda', fontWeight: FontWeight.w400),
          trailing: Icon(
            Icons.chevron_right,
            color: gris,
          ),
        ),
        ListTile(
          leading: Image(
            image: AssetImage('images/abouticon.png'),
            width: 29.0,
            height: 29.0,
            fit: BoxFit.cover,
          ),
          title:
              headerText(texto: 'Sobre nosotros', fontWeight: FontWeight.w400),
          trailing: Icon(
            Icons.chevron_right,
            color: gris,
          ),
        ),
      ],
    ),
  );
}
