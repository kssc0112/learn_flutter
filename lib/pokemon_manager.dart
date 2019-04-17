import 'package:flutter/material.dart';

import './pokemon.dart';

class PokemonManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PokemonManagerState();
  }
}

class _PokemonManagerState extends State<PokemonManager> {
  List<String> _pokemonList = ['Pickachu'];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: <Widget>[
      Container(
        margin: EdgeInsets.all(10.0),
        child: RaisedButton(
          onPressed: () {
            setState(() {
              _pokemonList.add('Charmander');
              print(_pokemonList);
            });
          },
          child: Text('Button'),
        ),
      ),
      Pokemon(_pokemonList)
    ]);
  }
}
