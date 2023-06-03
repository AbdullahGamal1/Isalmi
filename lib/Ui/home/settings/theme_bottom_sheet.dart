import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/provider/settings_provideer.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatelessWidget {
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
                  provider.enableLightTheme();
                },
                child: provider.isDarkEnable()
                    ? getUnSelectedWidget(
                        AppLocalizations.of(context)!.light, context)
                    : getSelectedWodget(
                        AppLocalizations.of(context)!.light, context)),
            SizedBox(height: 12),
            InkWell(
              onTap: () {
                provider.enableDarkTheme();
              },
              child: provider.isDarkEnable()
                  ? getSelectedWodget(
                      AppLocalizations.of(context)!.dark, context)
                  : getUnSelectedWidget(
                      AppLocalizations.of(context)!.dark, context),
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
