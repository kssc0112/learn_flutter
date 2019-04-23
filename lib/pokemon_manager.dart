import 'package:flutter/material.dart';

import './pokemons.dart';
import './pokemon_control.dart';

class PokemonManager extends StatefulWidget {
  final Map<String, dynamic> firstPokemon;

  PokemonManager({this.firstPokemon});

  @override
  State<StatefulWidget> createState() {
    return _PokemonManagerState();
  }
}

class _PokemonManagerState extends State<PokemonManager> {
  List<Map<String, dynamic>> _pokemonList = [];

  @override
  void initState() {
    super.initState();
    if (widget.firstPokemon != null) {
      _pokemonList.add(widget.firstPokemon);
    }
  }

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
