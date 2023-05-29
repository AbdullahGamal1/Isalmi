import 'package:flutter/material.dart';
import 'package:islami/Ui/home/hadeth/hadeth.dart';
import 'package:islami/Ui/home/quran/quran.dart';
import 'package:islami/Ui/home/radio/radio.dart';
import 'package:islami/Ui/home/tasbeh/tasbeh.dart';
import 'package:islami/Ui/my_theme_data.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedTabndex = 3;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(MyThemeData.themeMode == ThemeMode.dark
                  ? 'assets/images/dark_background.png'
                  : 'assets/images/background.png'),
              fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Center(
              child: Text('Islami',
                  style: Theme.of(context).textTheme.displayLarge)),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedTabndex,
          onTap: (index) {
            selectedTabndex = index;
            setState(() {});
          },
          // selectedItemColor: Colors.black,
          // unselectedItemColor: Colors.white,
          items: [
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/icon_radio.png')),
                label: 'Radio'),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/icon_sebha.png')),
                label: 'Tasbeeh'),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/icon_hadeth.png')),
                label: 'Hadeeth'),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/icon_quran.png')),
                label: 'Quran'),
          ],
        ),
        body: Tabs[selectedTabndex],
      ),
    );
  }

  List<Widget> Tabs = [RadioTab(), TasbehTab(), HadethTab(), QuranTab()];
}
