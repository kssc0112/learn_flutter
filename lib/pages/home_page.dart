import 'package:flutter/material.dart';

import '../pokemon_manager.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, String>> _pokemonList;
  final Function _addPokemon;
  final Function _deletePokemon;

  HomePage(this._pokemonList, this._addPokemon, this._deletePokemon);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text('Side Drawer'),
            ),
            ListTile(
              title: Text('Manage Pokemon'),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/admin');
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Pokemon'),
      ),
      body: PokemonManager(_pokemonList, _addPokemon, _deletePokemon),
    );
  }
}
