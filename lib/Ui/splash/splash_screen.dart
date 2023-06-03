import 'package:flutter/material.dart';
import 'package:islami/Ui/home/home_screen.dart';
import 'package:islami/provider/settings_provideer.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = "splash";

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingProvider>(context);
    // to wait time befor started App use Future.delayed(Duration(seconds: 4)
    Future.delayed(Duration(seconds: 2), () {
      // we used (Navigator.pushReplacementNamed) to delete backButton on homeScreen
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
    return Scaffold(
      body: Container(
        child: Image.asset(
          provider.isDarkEnable()
              ? "assets/images/splash_dark.png"
              : 'assets/images/splash.png',
          fit: BoxFit.fill,
          width: double.infinity,
          height: double.infinity,
        ),
      ),
    );
  }
}
