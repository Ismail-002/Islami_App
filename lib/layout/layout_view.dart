import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami3/core/settings_provider.dart';
import 'package:islami3/core/theme/application_theme.dart';
import 'package:islami3/module/Quran/quran_view.dart';
import 'package:islami3/module/hadith/hadith_view.dart';
import 'package:islami3/module/radio/radio.dart';
import 'package:islami3/module/sebha/sebha.dart';
import 'package:islami3/module/settings/setting_view.dart';
import 'package:provider/provider.dart';

class LayoutView extends StatefulWidget {
  static const String routeName = "layout";

  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  int selectedIndex = 0;

  List<Widget> screens = [
    const QuranView(),
    const HadithView(),
    const SebhaView(),
    const RadioView(),
    const SettingView(),
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var lang = AppLocalizations.of(context)!;
    var provider = Provider.of<SettingsProvider>(context);

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(provider.getBackgroundImage()),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            lang.islami,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: const Color(0xff242424),
              fontSize: 40,
              fontFamily: "ElMessiri",
            ),
          ),
        ),
        body: screens[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            print(index);
            selectedIndex = index;
            setState(() {
              selectedIndex = index;
            });
          },
          backgroundColor: ApplicationThemeManager.primaryColor,
          items: [
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icons/quran_icn.png")),
              label: lang.quran,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icons/Group 6.png")),
              label: lang.hadith,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icons/sebha_gold.png")),
              label: lang.tasbeh,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icons/radio_icn.png")),
              label: lang.radio,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: lang.setting,
            ),
          ],
        ),
      ),
    );
  }
}
