import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:lonewolf/src/constants/routes.dart';
import 'package:lonewolf/src/localisation/app-localizations-delegate.dart';
import 'package:lonewolf/src/screens/home/home.dart';
import 'package:lonewolf/src/screens/page2/page2.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),

      // Routing
      initialRoute: '/',
      routes: {
        Routes.home: (context) => HomeScreen(),
        Routes.second: (context) => Page2(),
      },

      // Translation
      localizationsDelegates: [
        AppLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'UK'),
      ],
    );
  }
}