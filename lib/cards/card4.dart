import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Card4 extends StatefulWidget {
  TextTheme textLightTheme;
  Card4({Key? key, required this.textLightTheme}) : super(key: key);

  @override
  State<Card4> createState() => _Card4State();
}

class _Card4State extends State<Card4> {
  bool iconState = false;
  Icon icon = const Icon(Icons.favorite_border);

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
            image: AssetImage('assets/images/mag4.png'),
            fit: BoxFit.cover,
            opacity: 0.7,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 16.0,
              left: 32.0,
              child: IconButton(
                icon: icon,
                iconSize: 30,
                color: const Color.fromARGB(255, 206, 109, 109),
                onPressed: () => setState(() {
                  if (!iconState) {
                    icon = const Icon(Icons.favorite);
                  } else {
                    icon = const Icon(Icons.favorite_border);
                  }
                  iconState = !iconState;
                }),
              ),
            ),
            Positioned(
              bottom: 30,
              right: 16,
              child: RotatedBox(
                quarterTurns: 7,
                child: Text(
                  'Enjoy Your Coffee',
                  style: widget.textLightTheme.headline1,
                ),
              ),
            ),
            Positioned(
              top: 100.0,
              left: 75.0,
              child: Text(
                'Coffee',
                style: widget.textLightTheme.headline1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
