import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/fishing_item_list_screen.dart';
import 'screens/fishing_item_form_screen.dart';
import 'utils/navigation_drawer.dart';

void main() => runApp(TralhaDePescaApp());

class TralhaDePescaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tralha de Pesca',
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/list': (context) => FishingItemListScreen(),
        '/form': (context) => FishingItemFormScreen(),
      },
    );
  }
}
