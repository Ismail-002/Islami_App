import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami3/core/settings_provider.dart';
import 'package:islami3/module/Quran/quran_view.dart';
import 'package:provider/provider.dart';

class QuranDetailsView extends StatefulWidget {
  static const String routeName = "QuranDetails";

  const QuranDetailsView({super.key});

  @override
  State<QuranDetailsView> createState() => _QuranDetailsViewState();
}

class _QuranDetailsViewState extends State<QuranDetailsView> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);

    var theme = Theme.of(context);

    var data = ModalRoute.of(context)?.settings.arguments as SuraData;

    if (versesList.isEmpty) loadQuranData(data.suraNumber);

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(provider.getBackgroundImage()),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "اسلامى",
          ),
        ),
        body: Container(
          padding:
              const EdgeInsets.only(top: 30, left: 30, right: 30, bottom: 80),
          margin:
              const EdgeInsets.only(top: 10, left: 30, right: 30, bottom: 80),
          decoration: BoxDecoration(
            color: provider.isDark()
                ? const Color(0xff141A2E).withOpacity(0.8)
                : const Color(0xfff8f8f8).withOpacity(0.8),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    " سورة ${data.suraName}",
                    style: theme.textTheme.bodyMedium,
                  ),
                  SizedBox(width: 15),
                  Icon(Icons.play_circle_fill_rounded)
                ],
              ),
              Divider(),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Text(
                      "{${index + 1} ${versesList[index]}",
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                  itemCount: versesList.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<String> versesList = [];

  Future<void> loadQuranData(String suraNumber) async {
    String content =
        await rootBundle.loadString("assets/files/$suraNumber.txt");
    versesList = content.split("\n");

    setState(() {});
  }
}
