import 'package:flutter/material.dart';
import 'dart:async';

class PokemonPage extends StatelessWidget {
  final String name;
  final String imageUrl;

  PokemonPage({this.name, this.imageUrl});

  _showRemoveDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Remove this Pokemon?'),
            content: Text('This will delete ' + name + ' :)'),
            actions: <Widget>[
              FlatButton(
                child: Text('Cancel'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              FlatButton(
                child: Text('Confirm'),
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pop(context, true);
                },
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
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
                onPressed: () => _showRemoveDialog(context),
              ))
            ],
          ),
        ),
        onWillPop: () {
          Navigator.pop(context, false);
          return Future.value(false);
        });
  }
}
