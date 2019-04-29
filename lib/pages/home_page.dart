import 'package:flutter/material.dart';

import '../pokemon_manager.dart';
import './pokemon_admin_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text('Side Drawer'),
            ),
            ListTile(
              title: Text('Manage Pokemon'),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => PokemonAdminPage()));
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Pokemon'),
      ),
      body: PokemonManager(),
    );
  }
}
