import 'package:flutter/material.dart';

import './home_page.dart';
import './pokemon_list_page.dart';
import './pokemon_add_page.dart';

class PokemonAdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          drawer: Drawer(
            child: Column(
              children: <Widget>[
                AppBar(
                  automaticallyImplyLeading: false,
                  title: Text('Side Drawer'),
                ),
                ListTile(
                  title: Text('Manage All Pokemon'),
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => HomePage()));
                  },
                )
              ],
            ),
          ),
          appBar: AppBar(
            title: Text('Manage Pokemon'),
            bottom: TabBar(tabs: <Widget>[
              Tab(
                text: 'Add Pokemon',
                icon: Icon(Icons.add),
              ),
              Tab(
                text: 'My Pokemon',
                icon: Icon(Icons.list),
              )
            ]),
          ),
          body: TabBarView(
              children: <Widget>[PokemonAddPage(), PokemonListPage()]),
        ));
  }
}
