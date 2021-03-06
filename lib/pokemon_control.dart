import 'package:flutter/material.dart';

class PokemonControl extends StatelessWidget {
  final Function _addPokemon;

  PokemonControl(this._addPokemon);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Theme.of(context).primaryColor,
      onPressed: () {
        _addPokemon({'name': 'Pickachu', 'imageUrl': 'assets/pickachu.jpg'});
      },
      child: Text('Button'),
    );
  }
}
