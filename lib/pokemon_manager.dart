import 'package:flutter/material.dart';

import './pokemon.dart';
import './pokemon_control.dart';

class PokemonManager extends StatefulWidget {
  final String firstPokemon;

  PokemonManager({this.firstPokemon = 'Charmander'});

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
    _pokemonList.add(widget.firstPokemon);
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
        margin: EdgeInsets.all(10.0),
        child: PokemonControl(addPokemon),
      ),
      Pokemon(_pokemonList)
    ]);
  }

  void addPokemon(String pokemon) {
    setState(() {
      _pokemonList.add(pokemon);
    });
  }
}
