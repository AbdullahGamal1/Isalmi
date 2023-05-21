import 'package:flutter/material.dart';
import 'package:islami/Ui/home/hadeth/hadeth.dart';

class HadethDetailsWidget extends StatelessWidget {
  static const String routName = 'HadethDetailsWidget';

  @override
  Widget build(BuildContext context) {
    var Hargs = ModalRoute.of(context)?.settings.arguments as Hadeth;
    // var hadethArg = ModalRoute.of(context)?.settings.arguments as HadethTab;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.fill)),
      child: Scaffold(
          appBar: AppBar(
            title: Text(Hargs.title),
          ),
          body: Column(
            children: [
              Expanded(
                  child: Card(
                margin: EdgeInsets.symmetric(horizontal: 12, vertical: 48),
                shape: RoundedRectangleBorder(
                    // to mack circular card around contant
                    borderRadius: BorderRadius.circular(24)),
                child: SingleChildScrollView(
                  child: Text(Hargs.content,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20)),
                ),
              ))
            ],
          )
          // Container(
          //     margin: EdgeInsets.symmetric(vertical: 60),
          //     child: SingleChildScrollView(child: Text(Hargs.content))),
          ),
    );
  }
}
