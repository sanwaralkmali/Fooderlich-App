import 'package:flutter/material.dart';
import '../circle_image.dart';

// ignore: must_be_immutable
class Card2 extends StatefulWidget {
  TextTheme textLightTheme;
  Card2({Key? key, required this.textLightTheme}) : super(key: key);

  @override
  State<Card2> createState() => _Card2State();
}

class _Card2State extends State<Card2> {
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
            image: AssetImage('assets/images/mag5.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0.0,
              left: 0.0,
              child: Container(
                width: MediaQuery.of(context).size.height * 1,
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    const CircleImage(
                      imageProvider:
                          AssetImage('assets/images/author_katz.jpeg'),
                      imageRadius: 28,
                    ),
                    const SizedBox(
                      width: 2.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Mike Katz',
                            style: widget.textLightTheme.headline2,
                          ),
                          Text(
                            'Smoothie Connoisseur',
                            style: widget.textLightTheme.headline3,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 40.0,
                    ),
                    IconButton(
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
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 70,
              left: 16,
              child: RotatedBox(
                quarterTurns: 3,
                child: Text(
                  'Smoothies',
                  style: widget.textLightTheme.headline1,
                ),
              ),
            ),
            Positioned(
              bottom: 16.0,
              right: 16.0,
              child: Text(
                'Recipe',
                style: widget.textLightTheme.headline1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
