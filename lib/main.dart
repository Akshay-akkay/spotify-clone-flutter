import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_2_2_test/playerBar.dart';

const playlistList = [
  "Food of love",
  "Eternity and a day",
  "Your Lucky Day",
  "Borrow the Happiness! 😊",
  "Ray Of Hope",
  "Back to 90s",
  "Art of silence 🔕",
  "Now or never",
  "Love messengers",
  "Enjoy your coffee",
  "Fresh start",
  "Touch times don’t last",
  "Own today",
  "Free humanity",
  "Together forever",
  "The flip side",
  "Do everything better",
  "Key moments",
  "Everything is connected",
  "Be in peace not in pieces",
  "Every day can be an adventure!",
  "Still sounding great",
  "Back in the day",
  "Hall of fame",
  "If I look back I am lost",
  "Can’t afford to miss!",
  "I’m here whenever you need me.",
  "Art of silence",
  "Good hands",
  "Decide your destiny",
  "keep moving",
  "Heaven doors",
  "Your smiling eyes",
  "Don’t wait!",
  "Dancing in the moonlight",
  "Happiness is by choice",
  "Nothing is impossible.",
  "Never bend your head.",
  "improve yourself",
  "Fight for your happiness",
  "To sing is to pray twice.",
  "Life is about creating yourself",
  "Music is the strongest form of magic.",
  "Music is my refuge"
];

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xff181818),
      persistentFooterButtons: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TitleSection(),
            MiddleSection(),
            if (width > 1000) ExtraControlSection(),
          ],
        ),
      ],
      body: Row(
        children: [
          Container(
            color: Colors.black,
            width: 240,
            height: double.infinity,
            child: Container(
              height: 10,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(CupertinoIcons.ellipsis, size: 30),
                        DrawerButton(
                          active: true,
                          title: 'Home',
                          icon: CupertinoIcons.house_fill,
                        ),
                        DrawerButton(
                          icon: CupertinoIcons.search,
                          title: 'Search',
                        ),
                        DrawerButton(
                          icon: CupertinoIcons.rectangle_stack,
                          title: 'Your Library',
                        ),
                        SizedBox(height: 42),
                        DrawerButton(
                          icon: CupertinoIcons.add_circled_solid,
                          title: 'Create Playlist',
                        ),
                        DrawerButton(
                          icon: CupertinoIcons.heart_circle_fill,
                          title: 'Liked Songs',
                        ),
                        DrawerButton(
                          icon: CupertinoIcons.dot_radiowaves_left_right,
                          title: 'Your Episodes',
                        ),
                        Divider(),
                      ],
                    ),
                  ),
                  Container(
                    height: 550,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 0),
                      child: Scrollbar(
                        isAlwaysShown: true,
                        child: ListView.builder(
                          itemCount: playlistList.length,
                          itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              playlistList[index],
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1
                                  ?.copyWith(color: Colors.grey.shade500),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DrawerButton extends StatelessWidget {
  DrawerButton({
    this.active = false,
    this.icon,
    this.title = 'Title missing',
  });
  bool active;
  IconData? icon;
  String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 42,
      decoration: active
          ? BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.grey.withAlpha(80),
            )
          : null,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
            child: Icon(icon),
          ),
          Text(title, style: Theme.of(context).textTheme.subtitle1),
        ],
      ),
    );
  }
}
