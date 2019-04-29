import 'package:flutter/material.dart';

import './pages/auth_page.dart';
import './pages/pokemon_admin_page.dart';
import './pages/home_page.dart';
import './pages/pokemon_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<Map<String, String>> _pokemonList = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          accentColor: Colors.deepPurpleAccent),
//      home: AuthPage(),
      routes: {
        '/': (BuildContext context) =>
            HomePage(_pokemonList, _addPokemon, _deletePokemon),
        '/admin': (BuildContext context) => PokemonAdminPage(),
//        '/pokemon': (BuildContext context) => PokemonPage(),
      },
      onGenerateRoute: (RouteSettings routeSettings) {
        final List<String> pathElements = routeSettings.name.split('/');
        if (pathElements[0] != '') {
          return null;
        }
        if (pathElements[1] == 'pokemon') {
          final int index = int.parse(pathElements[2]);
          return MaterialPageRoute<bool>(
              builder: (BuildContext context) => PokemonPage(
                    name: _pokemonList[index]['name'],
                    imageUrl: _pokemonList[index]['imageUrl'],
                  ));
        }
        return null;
      },
      onUnknownRoute: (RouteSettings routeSettings) {
        return MaterialPageRoute(
            builder: (BuildContext context) =>
                HomePage(_pokemonList, _addPokemon, _deletePokemon));
      },
    );
  }

  void _addPokemon(Map<String, dynamic> pokemon) {
    setState(() {
      _pokemonList.add(pokemon);
    });
  }

  void _deletePokemon(int index) {
    setState(() {
      _pokemonList.removeAt(index);
    });
  }
}
