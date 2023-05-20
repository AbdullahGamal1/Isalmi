import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/Ui/home/quran/sura_name_widget.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routename = 'SuraDetailsScreen';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> chapterContent = [];

  @override
  Widget build(BuildContext context) {
    //Ask About that

    var args =
        ModalRoute.of(context)?.settings.arguments as SuraDetailsArguments;
    // at the last line we use the casting (as) and that happend between parent and child
    if (chapterContent.isEmpty) // initial state
      //i use that to mack me sure this function will not be a infinty function
      readFiles(args.index);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(title: Text(args.title)),
        body: Column(
          children: [
            Expanded(
              child: chapterContent.isEmpty
                  ? Center(child: CircularProgressIndicator())
                  : Card(
                      margin:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 48),
                      shape: RoundedRectangleBorder(
                          // to mack circular card around contant
                          borderRadius: BorderRadius.circular(24)),
                      child: ListView.separated(
                        itemBuilder: (context, index) {
                          return Text(
                            chapterContent[index],
                            textAlign: TextAlign.center,
                          );
                        },
                        itemCount: chapterContent.length,
                        separatorBuilder: (context, index) {
                          return Container(
                            color: Theme.of(context).primaryColor,
                            height: 1,
                            width: double.infinity,
                            margin: EdgeInsets.symmetric(horizontal: 64),
                          );
                        },
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }

  void readFiles(int chapterIndex) async {
    //async , once it called ,the copmiler will wait for it
    String text =
        await rootBundle.loadString('assets/files/${chapterIndex + 1}.txt');
    chapterContent = text.split('\n');
    setState(() {});
    // -setState- this mack a rebuild to the page and widget
  }
}
