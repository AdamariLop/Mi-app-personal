import 'package:app_personal/pages/biografia_page.dart';
import 'package:app_personal/pages/calificar_page.dart';
import 'package:app_personal/pages/educacion_page.dart';
import 'package:app_personal/pages/favoritos_page.dart';
import 'package:app_personal/pages/hobbies_page.dart';
import 'package:app_personal/pages/home_page.dart';
import 'package:app_personal/pages/lugares_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sobre mí',
      initialRoute: '/',
      routes: <String,WidgetBuilder> {
        '/': (BuildContext context) => HomePage(),
        'biografia': (BuildContext context) => BiografiaPage(),
        'educacion': (BuildContext context) => EducacionPage(),
        'hobbie': (BuildContext context) => HobbiesPage(),
        'favoritos': (BuildContext context) => FavoritosPage(),
        'lugares': (BuildContext context) => LugaresPage(),
        'calificacion': (BuildContext context) => CalificarPage(),
      },
      theme: ThemeData(
        primaryColor: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}