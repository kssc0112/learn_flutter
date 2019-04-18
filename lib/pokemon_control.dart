import 'package:flutter/material.dart';

class PokemonControl extends StatelessWidget {
  final Function _addPokemon;

  PokemonControl(this._addPokemon);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      color: Theme.of(context).primaryColor,
      onPressed: () {
        _addPokemon('Charmander');
      },
      child: Text('Button'),
    );
  }
}
