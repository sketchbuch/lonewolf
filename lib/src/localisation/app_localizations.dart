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

  // Home
  String get homeTitle {
    return Intl.message(
      'Lone Wolf Game Books',
      name: 'homeTitle',
      desc: 'The App Bar title.',
    );
  }

  String get homeDownload {
    return Intl.message(
      'Download books',
      name: 'homeDownload',
      desc: 'The home screen download button text.',
    );
  }

  String get homeWelcomeText1 {
    return Intl.message(
      'Welcome to Lone Wolf Game Books.',
      name: 'homeWelcomeText1',
      desc: 'The first welcome text when there are no books loaded.',
    );
  }

  String get homeWelcomeText2 {
    return Intl.message(
      'Before you can start playing you need to download the books from Project Aon.',
      name: 'homeWelcomeText2',
      desc: 'The second welcome text when there are no books loaded.',
    );
  }

  String get titlePage2 {
    return Intl.message(
      'Lone Wolf Game Books Page 2',
      name: 'titlePage2',
      desc: 'The title sccreen 2',
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