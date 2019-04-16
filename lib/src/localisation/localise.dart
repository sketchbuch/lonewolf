import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../l10n/messages_all.dart';

class AppLocalizations {
  static Future<AppLocalizations> load(Locale locale) {
    final String name = locale.countryCode.isEmpty ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      return AppLocalizations();
    });
  }

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  String get titlePage1 {
    return Intl.message(
      'Lone Wolf Game Books Page 1',
      name: 'titlePage1',
      desc: 'The title sccreen 1',
    );
  }

  String get titlePage2 {
    return Intl.message(
      'Lone Wolf Game Books Page 2',
      name: 'titlePage2',
      desc: 'The title sccreen 2',
    );
  }

  String get openRoute {
    return Intl.message(
      'Click Me!',
      name: 'openRoute',
      desc: 'The title of the application',
    );
  }

  String get closeRoute {
    return Intl.message(
      'Go Back',
      name: 'closeRoute',
      desc: 'The title of the application',
    );
  }
}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) {
    return AppLocalizations.load(locale);
  }

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalizations> old) {
    return false;
  }
}