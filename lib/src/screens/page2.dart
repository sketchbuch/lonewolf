import 'package:flutter/material.dart';
import '../localisation/localise.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context).titlePage2),
        ),
        body: Center(
          child: RaisedButton(
            child: Text(AppLocalizations.of(context).closeRoute),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }
}