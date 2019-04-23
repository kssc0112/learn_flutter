import 'package:flutter/material.dart';

class Pokemons extends StatelessWidget {
  final List<String> _pokemonList;

  Pokemons(this._pokemonList);

  Widget _buildPokemonItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset('assets/pickachu.jpg'),
          Text(_pokemonList[index])
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _pokemonList.length > 0
        ? ListView.builder(
            itemBuilder: _buildPokemonItem,
            itemCount: _pokemonList.length,
          )
        : Center(
            child: Text('Add your favorite Pokemon!'),
          );
  }
}
