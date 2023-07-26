import 'package:flutter/material.dart';

import 'actions/actions.dart';
import 'communication/communication.dart';
import 'containment/containment.dart';
import 'navigation/bottom_navigation.dart';
import 'navigation/drawer_navigation.dart';
import 'navigation/tab_bar_navigation.dart';
import 'screens/home.dart';
import 'selection/date_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          colorSchemeSeed: const Color(0xff50ac46), useMaterial3: true
      ),
      home: const Home(),
      routes: <String, WidgetBuilder> {
        '/drawer_navigation': (context) => const DrawerNavigation(),
        '/bottom_navigation': (context) => const BottomNavigation(),
        '/tab_bar_navigation': (context) => const TabBarExample(),
        '/common_buttons': (context) => const ButtonTypesDemo(),
        '/communication': (context) => const CommunicationDemo(),
        '/containment': (context) => const ContainmentDemo(),
        '/show_list_view': (context) => const ListViewDemo(),
        '/date_picker': (context) => const DatePickerExample(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
