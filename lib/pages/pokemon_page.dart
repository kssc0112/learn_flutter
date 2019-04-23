import 'package:flutter/material.dart';

class PokemonPage extends StatelessWidget {
  final String name;
  final String imageUrl;

  PokemonPage({this.name, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Column(
        children: <Widget>[
          Image.asset(imageUrl),
          Container(padding: EdgeInsets.all(10.0), child: Text(name)),
          Container(
              child: RaisedButton(
            padding: EdgeInsets.all(10.0),
            child: Text("Remove"),
            onPressed: () => Navigator.pop(context, true),
          ))
        ],
      ),
    );
  }
}
