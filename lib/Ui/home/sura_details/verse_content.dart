import 'package:flutter/material.dart';

class VerseContant extends StatelessWidget {
  String content;

  VerseContant(this.content);

  @override
  Widget build(BuildContext context) {
    return Container(
      // to center sura names
      alignment: Alignment.center,
      child: Text(content,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24,
          )),
    );
  }
}
