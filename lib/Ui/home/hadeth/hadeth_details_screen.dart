import 'package:flutter/material.dart';
import 'package:islami/Ui/home/hadeth/hadeet_name.dart';

class HadeethDetailsScreen extends StatelessWidget {
  static const String routeName = 'HadeethDetailsScreen';

  @override
  Widget build(BuildContext context) {
    var hadetharg =
        ModalRoute.of(context)?.settings.arguments as HadethDetailsArguments;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            hadetharg.title,
          ),
        ),
      ),
    );
  }
}
