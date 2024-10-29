import 'dart:developer';

import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami3/core/settings_provider.dart';
import 'package:provider/provider.dart';

class SettingView extends StatefulWidget {
  const SettingView({super.key});

  @override
  State<SettingView> createState() => _SettingViewState();
}

class _SettingViewState extends State<SettingView> {
  List<String> languages = ["English", "عربى"];
  List<String> themeMode = ["Light", "Dark"];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var lang = AppLocalizations.of(context)!;
    var provider = Provider.of<SettingsProvider>(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            lang.language,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 15),
          CustomDropdown<String>(
              hintText: 'Select job role',
              items: languages,
              initialItem: provider.currentLanguage == "en"
                  ? languages[0]
                  : languages[1],
              onChanged: (value) {
                if (value == "English") {
                  provider.changeCurrentLanguage("en");
                }
                if (value == "عربى") {
                  provider.changeCurrentLanguage("ar");
                }
                log('changing value to: $value');
              },
              decoration: CustomDropdownDecoration(
                  closedFillColor: Color(0xff141A2E0),
                  closedSuffixIcon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: provider.isDark()
                        ? theme.primaryColorDark
                        : Colors.black,
                  ))),
          const SizedBox(height: 40),

          Text(
            lang.theme_mode,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 15),
          CustomDropdown<String>(
              hintText: 'Select job role',
              items: themeMode,
              initialItem: provider.currentThemeMode == ThemeMode.light
                  ? themeMode[0]
                  : themeMode[1],
              // initialItem: theme[0],
              onChanged: (value) {
                if (value == "Light") {
                  provider.changeCurrentTheme(ThemeMode.light);
                }

                if (value == "Dark") {
                  provider.changeCurrentTheme(ThemeMode.dark);
                }
                log('changing value to: $value');
              },
              decoration: CustomDropdownDecoration(
                closedFillColor:
                    provider.isDark() ? Color(0xff141A2E) : Colors.white,
                closedSuffixIcon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color:
                      provider.isDark() ? theme.primaryColorDark : Colors.black,
                ),
                expandedFillColor:
                    provider.isDark() ? Color(0xff141A2E) : Colors.white,
                expandedSuffixIcon: Icon(
                  Icons.keyboard_arrow_up_rounded,
                  color:
                      provider.isDark() ? theme.primaryColorDark : Colors.black,
                ),
              )),
          //state management
        ],
      ),
    );
  }
}
