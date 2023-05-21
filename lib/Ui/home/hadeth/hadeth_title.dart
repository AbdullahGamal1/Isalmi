import 'package:flutter/material.dart';
import 'package:islami/Ui/home/hadeth/hadeth.dart';
import 'package:islami/Ui/home/hadeth/hadeth_datails.dart';

class HadethtitleWidget extends StatelessWidget {
  Hadeth hadeth;

  HadethtitleWidget(this.hadeth);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HadethDetailsWidget.routName,
            arguments: Hadeth(hadeth.title, hadeth.content));
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(hadeth.title,
            style: TextStyle(
              fontSize: 24,
            )),
      ),
    );
  }
}
