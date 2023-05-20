import 'package:flutter/material.dart';
import 'package:islami/Ui/home/sura_details/sura_details.dart';

class SuraNameWidget extends StatelessWidget {
  String title;
  int index;

  SuraNameWidget(this.title, this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // inkWell to  mack my item clickable
      onTap: () {
        Navigator.pushNamed(context, SuraDetailsScreen.routename,
            //now we want mack agument but it tack one parameter so we c
            arguments: SuraDetailsArguments(title, index));
      },
      child: Container(
        // to center sura names
        alignment: Alignment.center,
        child: Text(title,
            style: TextStyle(
              fontSize: 24,
            )),
      ),
    );
  }
}

class SuraDetailsArguments {
  // Data Class
  String title;
  int index;

  SuraDetailsArguments(this.title, this.index);
}
