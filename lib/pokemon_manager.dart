import 'package:flutter/material.dart';

import './pokemon.dart';

class PokemonManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PokemonManagerState();
  }
}

class _PokemonManagerState extends State<PokemonManager> {
  List<String> _pokemonList = ['Pickachu'];

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
        margin: EdgeInsets.all(10.0),
        child: RaisedButton(
          onPressed: () {
            setState(() {
              _pokemonList.add('Charmander');
            });
          },
          child: Text('Button'),
        ),
      ),
      Pokemon(_pokemonList)
    ]);
  }
}
