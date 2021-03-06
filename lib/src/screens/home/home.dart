import 'package:flutter/material.dart';
import 'package:lonewolf/src/localisation/app_localizations.dart';
import 'package:lonewolf/src/widgets/para/para.dart';
import 'package:lonewolf/src/utils/get_book.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context).homeTitle),
        ),
        body:
          Center(
            child:
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Para(AppLocalizations.of(context).homeWelcomeText1),
                  Para(AppLocalizations.of(context).homeWelcomeText2),
                  RaisedButton(
                    child: Text(AppLocalizations.of(context).homeDownload),
                    onPressed: () {
                      getAonBook();
                      //Navigator.pushNamed(context, Routes.second);
                    },
                  ),
                ],
              ),
          ),
        ),
      );
  }
}