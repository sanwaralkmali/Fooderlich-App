import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Card1 extends StatelessWidget {
  final TextTheme textDarkTheme;
  const Card1({Key? key, required this.textDarkTheme}) : super(key: key);

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
            image: AssetImage('assets/images/mag1.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 20.0,
              left: 15.0,
              child: Text(
                'Editor\'s Choice',
                style: textDarkTheme.displaySmall,
              ),
            ),
            Positioned(
              top: 40.0,
              left: 15.0,
              child: Text(
                'The Art of Dough',
                style: textDarkTheme.displayMedium,
              ),
            ),
            Positioned(
              bottom: 50.0,
              right: 10.0,
              child: Text(
                'Learn to make the perfect bread.',
                style: textDarkTheme.displaySmall,
              ),
            ),
            Positioned(
              bottom: 25.0,
              right: 15.0,
              child: Text(
                'Ray Wenderlich',
                style: textDarkTheme.headline3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
