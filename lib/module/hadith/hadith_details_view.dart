import 'package:flutter/material.dart';
import 'package:islami3/module/hadith/hadith_view.dart';

class HadithDetailsView extends StatelessWidget {
  static const routeName = "HadithDetails";

  const HadithDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    var data = ModalRoute.of(context)?.settings.arguments as HadithData;

    return Container(
      decoration: BoxDecoration(
        image: const DecorationImage(
            image: AssetImage("assets/images/background.png"),
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
            color: Color(0xfff8f8f8).withOpacity(.8),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(children: [
            Text(
              data.title,
              style: theme.textTheme.bodyMedium,
            ),
            const Divider(),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    data.bodyContent,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                itemCount: 1,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
