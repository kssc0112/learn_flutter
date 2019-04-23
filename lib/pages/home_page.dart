import 'package:flutter/material.dart';

import '../pokemon_manager.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pokemon'),
      ),
      body: PokemonManager(),
    );
  }
}