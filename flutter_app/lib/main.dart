import 'package:flutter/material.dart';

import 'screens/cart_page.dart';
import 'screens/detail_page.dart';
import 'screens/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mini Katalog Uygulaması',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.grey[50], // Temel UI teması
      ),
      // Named Routes Tanımlamaları
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/detail': (context) => DetailPage(),
        '/cart': (context) => CartPage(),
      },
    );
  }
}
