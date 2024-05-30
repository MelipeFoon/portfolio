import 'package:flutter/material.dart';
import 'package:portifolio/pages/home_page.dart';
import 'package:portifolio/pages/sobre_page.dart';
import 'package:portifolio/pages/contato_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Felipe Moon",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomePage(),
        '/sobre': (context) => SobrePage(),
        '/contato': (context) => ContatoPage(),
      },
    );
  }
}