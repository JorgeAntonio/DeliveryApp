import 'package:flutter/material.dart';

//Pages
import 'package:first_proyect/src/features/presentation/welcome_page/View/welcome_page.dart';
import 'package:first_proyect/src/features/presentation/login_page/View/login_page.dart';
import 'package:first_proyect/src/features/presentation/forgot_password_page/View/forgot_password.dart';
import 'package:first_proyect/src/features/presentation/sign_up_page/View/sign_up_page.dart';
import 'package:first_proyect/src/features/presentation/tabs/tabs_page.dart';
import 'package:first_proyect/src/features/presentation/search_page/view/searchView.dart';
import 'package:first_proyect/src/features/presentation/filter_page/View/filter_page.dart';
import 'package:first_proyect/src/features/presentation/collections_page/View/collections_page.dart';
import 'package:first_proyect/src/features/presentation/collection_detail_page/View/collection_detail_page.dart';
import 'package:first_proyect/src/features/presentation/place_detail_page/View/place_detail_page.dart';

final routes = <String, WidgetBuilder>{
  'welcome': (BuildContext context) => WelcomePage(),
  'login': (BuildContext context) => LoginPage(),
  'forgot-password': (BuildContext context) => ForgotPassword(),
  'sign-up': (BuildContext context) => SignUpPage(),
  'tabs': (BuildContext context) => TabsPage(),
  'search': (BuildContext context) => SearchPage(),
  'filter': (BuildContext context) => FilterPage(),
  'collections': (BuildContext context) => CollectionsPage(),
  'collections-detail': (BuildContext context) => CollectionDetailPage(),
  'place-detail': (BuildContext context) => PlaceDetailPage(),
};
