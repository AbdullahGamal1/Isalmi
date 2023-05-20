import 'package:flutter/material.dart';
import 'package:islami/Ui/home/hadeth/hadeth_details_screen.dart';
import 'package:islami/Ui/home/home_screen.dart';
import 'package:islami/Ui/home/sura_details/sura_details.dart';
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
        HadeethDetailsScreen.routeName: (_) => HadeethDetailsScreen(),
      },
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.transparent,
          primaryColor: Color(0xFFB7935F),
          appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(color: Colors.black),
            color: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            titleTextStyle: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.white)),
    );
  }
}
