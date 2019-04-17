import 'package:flutter/material.dart';

class Pokemon extends StatelessWidget {
  final List<String> pokemonList;

  Pokemon(this.pokemonList);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: pokemonList
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
