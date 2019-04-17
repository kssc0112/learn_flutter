import 'package:flutter/material.dart';

class Pokemon extends StatelessWidget {
  final List<String> _pokemonList;

  Pokemon(this._pokemonList);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _pokemonList
          .map((pokemon) => Card(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/pickachu.jpg'),
                    Text('pickachu')
                  ],
                ),
              ))
          .toList(),
    );
  }
}
