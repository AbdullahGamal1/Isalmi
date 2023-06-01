import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami/Ui/home/hadeth/hadeth_datails.dart';
import 'package:islami/Ui/home/home_screen.dart';
import 'package:islami/Ui/home/sura_details/sura_details.dart';
import 'package:islami/Ui/my_theme_data.dart';
import 'package:islami/Ui/splash/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: SplashScreen.routeName,
      routes: {
        HomeScreen.routeName: (buildContext) => HomeScreen(),
        SplashScreen.routeName: (buildContext) => SplashScreen(),
        SuraDetailsScreen.routename: (_) => SuraDetailsScreen(),
        HadethDetailsWidget.routName: (_) => HadethDetailsWidget()
      },
      theme: MyThemeData.lightTeme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: MyThemeData.themeMode,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'), // Arabic
      ],
      locale: Locale("ar"),
    );
  }
}
