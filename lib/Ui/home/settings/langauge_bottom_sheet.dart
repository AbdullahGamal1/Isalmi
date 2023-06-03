import 'package:flutter/material.dart';
import 'package:islami/provider/settings_provideer.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingProvider>(context);

    return Container(
        color: Theme.of(context).cardColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            InkWell(
              onTap: () {
                provider.changeLanguage("en");
              },
              child: provider.languageCode == "en"
                  ? getSelectedWodget("English", context)
                  : getUnSelectedWidget("English", context),
            ),
            SizedBox(height: 12),
            InkWell(
              onTap: () {
                provider.changeLanguage("ar");
              },
              child: provider.languageCode == "ar"
                  ? getSelectedWodget("العربية", context)
                  : getUnSelectedWidget("العربية", context),
            )
          ],
        ));
  }

  Widget getSelectedWodget(String title, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: Theme.of(context).canvasColor)),
        Icon(
          Icons.check,
          color: Theme.of(context).canvasColor,
        )
      ],
    );
  }

  Widget getUnSelectedWidget(String title, BuildContext context) {
    return Text(title, style: Theme.of(context).textTheme.bodyMedium);
  }
}
