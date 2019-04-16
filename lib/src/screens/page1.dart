import 'package:flutter/material.dart';
import '../constants/routes.dart';
import '../localisation/localise.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context).titlePage1),
        ),
        body: Center(
          child: RaisedButton(
            child: Text(AppLocalizations.of(context).openRoute),
            onPressed: () {
              Navigator.pushNamed(context, Routes.second);
            },
          ),
        ),
      ),
    );
  }
}