import 'package:flutter/cupertino.dart';

class SebhaView extends StatelessWidget {
  const SebhaView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Sebha Viwe",
        style: TextStyle(
          fontFamily: "ElMessiri",
          fontWeight: FontWeight.bold,
          fontSize: 50,
        ),
      ),
    );
  }
}
