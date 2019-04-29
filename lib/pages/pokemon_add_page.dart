import 'package:flutter/material.dart';

class PokemonAddPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
          child: Text('Add'),
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Center(
                    child: Text('Test Modal'),
                  );
                });
          }),
    );
  }
}
