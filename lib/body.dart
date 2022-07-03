import 'package:flutter/material.dart';
import 'cards/card1.dart';
import 'cards/card2.dart';
import 'cards/card3.dart';
import 'cards/card4.dart';
import 'fooderlich_theme.dart';

// ignore: must_be_immutable
class BodyData extends StatefulWidget {
  int index;
  BodyData({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  State<BodyData> createState() => _BodyDataState();
}

class _BodyDataState extends State<BodyData> {
  static TextTheme textDarkTheme = FooderlichTheme.darkTextTheme;
  static TextTheme textLightTheme = FooderlichTheme.lightTextTheme;

  List<Widget> wed = [
    Card1(textDarkTheme: textDarkTheme),
    Card2(textLightTheme: textLightTheme),
    Card3(textLightTheme: textDarkTheme),
    Card4(textLightTheme: textDarkTheme),
  ];

  @override
  Widget build(BuildContext context) {
    return wed[widget.index];
  }
}
