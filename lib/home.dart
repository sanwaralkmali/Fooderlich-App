import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';
import 'body.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextStyle? appBartitle = FooderlichTheme.darkTextTheme.headline1;
  ThemeData themed = FooderlichTheme.dark();
  TextTheme txtTheme = FooderlichTheme.darkTextTheme;
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fooderlish',
      theme: themed,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Fooderlish',
            style: appBartitle,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () => setState(() {
                  if (themed == FooderlichTheme.dark()) {
                    themed = FooderlichTheme.light();
                    appBartitle = FooderlichTheme.lightTextTheme.headline1;
                  } else {
                    themed = FooderlichTheme.dark();
                    appBartitle = FooderlichTheme.darkTextTheme.headline1;
                  }
                }),
                child: Image.asset("assets/icons/brightness-and-contrast.png"),
              ),
            ),
          ],
        ),
        body: BodyData(
          index: _selectedIndex,
        ),
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 35.0,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/card1.png',
                width: 35,
              ),
              label: 'Card 1',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/card2.png',
                width: 35,
              ),
              label: 'Card 2',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/card3.png',
                width: 35,
              ),
              label: 'Card 3',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/card4.png',
                width: 35,
              ),
              label: 'Card 4',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
