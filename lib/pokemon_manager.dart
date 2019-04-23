import 'package:flutter/material.dart';

import './pokemons.dart';
import './pokemon_control.dart';

class PokemonManager extends StatefulWidget {
  final String firstPokemon;

  PokemonManager({this.firstPokemon});

  @override
  State<StatefulWidget> createState() {
    return _PokemonManagerState();
  }
}

class _PokemonManagerState extends State<PokemonManager> {
  List<String> _pokemonList = [];

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
        child: PokemonControl(addPokemon),
      ),
      Expanded(
        child: Pokemons(_pokemonList),
      )
    ]);
  }

  void addPokemon(String pokemon) {
    setState(() {
      _pokemonList.add(pokemon);
    });
  }
}
