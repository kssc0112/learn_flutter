import 'package:flutter/material.dart';

import './pokemons.dart';
import './pokemon_control.dart';

class PokemonManager extends StatelessWidget {
  final List<Map<String, String>> _pokemonList;
  final Function _addPokemon;
  final Function _deletePokemon;

  PokemonManager(this._pokemonList, this._addPokemon, this._deletePokemon);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
        margin: EdgeInsets.all(10.0),
        child: PokemonControl(_addPokemon),
      ),
      Expanded(
        child: Pokemons(
          _pokemonList,
          deletePokemon: _deletePokemon,
        ),
      )
    ]);
  }
}