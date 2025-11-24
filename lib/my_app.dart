import 'package:flutter/material.dart';
import 'package:lab7_flutter_demo/home_screen.dart';
import 'package:lab7_flutter_demo/interactive_screen.dart';
import 'package:lab7_flutter_demo/layout_example_screen.dart';
import 'package:lab7_flutter_demo/list_example_screen.dart';
import 'package:lab7_flutter_demo/product_detail_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Capitolul 7',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      // Definirea rutei inițiale
      initialRoute: '/',
      // Harta rutelor (Named Routes - Vezi 7.5.2)
      routes: {
        '/': (context) => const HomeScreen(),
        '/layout': (context) => const LayoutExampleScreen(),
        '/interactive': (context) => const InteractiveScreen(),
        '/list': (context) => const ListExampleScreen(),
        '/details': (context) => const ProductDetailScreen(),
      },
    );
  }
}
