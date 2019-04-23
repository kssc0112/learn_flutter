import 'package:flutter/material.dart';

import './pokemon_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            primarySwatch: Colors.deepOrange,
            accentColor: Colors.deepPurpleAccent),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Pokemon'),
          ),
          body: PokemonManager(),
        ));
  }
}
