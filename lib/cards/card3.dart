import 'package:flutter/material.dart';
import '../fooderlich_theme.dart';

// ignore: must_be_immutable
class Card3 extends StatefulWidget {
  TextTheme textLightTheme;
  Card3({Key? key, required this.textLightTheme}) : super(key: key);

  @override
  State<Card3> createState() => _Card3State();
}

class _Card3State extends State<Card3> {
  static TextTheme textLightTheme = FooderlichTheme.darkTextTheme;
  List<String> labels = [
    "Healthy",
    "Vegan",
    "Carrots",
    "Greens",
    "Wheat",
    "Mint",
    "HAHA",
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/mag2.png'),
            fit: BoxFit.cover,
            opacity: 0.5,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Stack(
          children: [
            const Positioned(
              top: 16.0,
              left: 16.0,
              child: Icon(
                Icons.book,
                color: Colors.white,
                size: 40,
              ),
            ),
            Positioned(
              top: 70.0,
              left: 16.0,
              child: Text(
                'Recipe Trends',
                style: widget.textLightTheme.headline2,
              ),
            ),
            Center(
              child: Wrap(
                alignment: WrapAlignment.start,
                spacing: 12,
                children: List.generate(labels.length, (int index) {
                  return Chip(
                    label: Text(
                      labels[index],
                      style: textLightTheme.bodyText1,
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      setState(() {
                        labels.removeAt(index);
                      });
                    },
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
