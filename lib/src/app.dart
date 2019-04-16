import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import './constants/routes.dart';
import './localisation/localise.dart';
import './screens/page1.dart';
import './screens/page2.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),

      // Routing
      initialRoute: '/',
      routes: {
        Routes.home: (context) => Page1(),
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