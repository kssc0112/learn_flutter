import 'package:flutter/material.dart';

class Pokemons extends StatelessWidget {
  final List<Map<String, dynamic>> _pokemonList;
  final Function deletePokemon;

  Pokemons(this._pokemonList, {this.deletePokemon});

  Widget _buildPokemonItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(_pokemonList[index]['imageUrl']),
          Text(_pokemonList[index]['name']),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('Show details'),
                onPressed: () => {
                      Navigator.pushNamed<bool>(
                              context, '/pokemon/' + index.toString())
                          .then((bool onValue) {
                        if (onValue) {
                          deletePokemon(index);
                        }
                      })
                    },
              )
            ],
          )
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
