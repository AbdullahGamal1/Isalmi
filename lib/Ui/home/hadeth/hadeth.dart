import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/Ui/home/hadeth/hadeth_title.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> allHadethList = [];

  @override
  Widget build(BuildContext context) {
    if (allHadethList.isEmpty) {
      readFileContant();
    }

    return Column(children: [
      Expanded(child: Image.asset("assets/images/hadeth_logo.png")),
      Container(
        width: double.infinity,
        height: 1,
        color: Theme.of(context).primaryColor,
        margin: EdgeInsets.symmetric(vertical: 4),
      ),
      Text('Hadeeth Number',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
      Container(
        width: double.infinity,
        height: 1,
        color: Theme.of(context).primaryColor,
        margin: EdgeInsets.symmetric(vertical: 4),
      ),
      Expanded(
          flex: 3,
          child: Container(
              child: allHadethList.isEmpty
                  ? Center(
                      child: CircularProgressIndicator(
                          color: Theme.of(context).primaryColor),
                    )
                  : ListView.separated(
                      itemBuilder: (context, index) {
                        return HadethtitleWidget(allHadethList[index]);
                      },
                      itemCount: allHadethList.length,
                      separatorBuilder: (context, index) {
                        return Container(
                            color: Theme.of(context).primaryColor,
                            height: 1,
                            width: double.infinity,
                            margin: EdgeInsets.symmetric(horizontal: 64));
                      })))
    ]);
  }

  readFileContant() async {
    List<Hadeth> hadethList = [];
    String fileContant =
        await rootBundle.loadString('assets/hadeth/ahadeth.txt');
    List<String> splittingContent = fileContant.split('#');
    for (int i = 0; i < splittingContent.length; i++) {
      String singleHadethContent = splittingContent[i];
      List<String> lines = singleHadethContent.trim().split('\n');
      String title = lines[0];
      lines.removeAt(0);
      String content = lines.join('\n');
      Hadeth hadeth = Hadeth(title, content);
      hadethList.add(hadeth);
    }
    // await Future.delayed(Duration(seconds: 4));
    allHadethList = hadethList;
    setState(() {});
  }
}

class Hadeth {
  String title;
  String content;

  Hadeth(this.title, this.content);
}
