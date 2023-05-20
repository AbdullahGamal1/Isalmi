import 'package:flutter/material.dart';
import 'package:islami/Ui/home/hadeth/hadeth_details_screen.dart';

class HadethNameWidget extends StatelessWidget {
  String title;
  int index;

  HadethNameWidget(this.title, this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HadeethDetailsScreen.routeName,
            arguments: HadethDetailsArguments(title, index));
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(
          title,
        ),
      ),
    );
  }
}

class HadethDetailsArguments {
  // Data Class
  String title;
  int index;

  HadethDetailsArguments(this.title, this.index);
}
