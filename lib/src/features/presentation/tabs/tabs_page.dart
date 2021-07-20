import 'package:first_proyect/src/colors/colors.dart';
import 'package:first_proyect/src/features/presentation/commons_widgets/alerts/alert_dialog.dart';
import 'package:first_proyect/src/features/presentation/commons_widgets/buttons/rounded_button.dart';
import 'package:flutter/material.dart';
//Tabs
import 'package:first_proyect/src/features/presentation/tabs/explore_tab/View/explore_tab.dart';
import 'package:first_proyect/src/features/presentation/tabs/favourite_tab/View/favourite_tab.dart';
import 'package:first_proyect/src/features/presentation/tabs/my_order_tab/View/my_order_tab.dart';
import 'package:first_proyect/src/features/presentation/tabs/profile_tab/View/profile_tab.dart';

class TabsPage extends StatefulWidget {
  TabsPage({Key? key}) : super(key: key);

  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      _pedirLocation(context);
    });
  }

  List<Widget> _widgetOption = [
    ExploreTab(),
    MyOrderTab(),
    FavouriteTab(),
    ProfileTab()
  ];

  int _selectedItemIndex = 0;

  void _cambiarWidget(int index) {
    setState(() {
      _selectedItemIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOption.elementAt(_selectedItemIndex),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
        iconSize: 30.0,
        selectedItemColor: orange,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedItemIndex,
        onTap: _cambiarWidget,
        showUnselectedLabels: true,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explorar'),
          BottomNavigationBarItem(
              icon: Icon(Icons.assignment), label: 'Mi orden'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Favoritos'),
          BottomNavigationBarItem(icon: Icon(Icons.person_pin), label: 'Perfil')
        ]);
  }

  Future _pedirLocation(BuildContext context) async {
    showAlertDialog(
        context,
        NetworkImage(
            'https://toppng.com/uploads/preview/google-map-pin-icon-google-maps-icon-orange-11553459497uwtffdmg4t.png'),
        'Activar Ubicación',
        'Por favor active su ubicación para mostrarle los restaurantes de su cercanía',
        createButton(
            context: context,
            buttonColor: orange,
            labelButton: 'Activar Ubicación',
            func: () {}));
  }
}
