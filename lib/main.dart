import 'package:flutter/material.dart';
import 'package:news_app/screens/Discover.dart';
import 'package:news_app/screens/Skymap.dart';
import 'package:news_app/screens/article.dart';
import 'package:news_app/screens/home.dart';
import 'package:news_app/screens/result.dart';
import 'package:news_app/screens/search.dart';
import 'package:news_app/screens/splachscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splach',
      routes: {
        splashscreen.routeName: (context) => splashscreen(),
        homepage.routeName: (context) => homepage(),
        discoverpage.routeName: (context) => discoverpage(),
        articalepage.routeName: (context) => const articalepage(),
        resultpage.routeName: (context) => const resultpage(),
        searchpage.routeName: (context) => searchpage(),
        skymapPage.routeName: (context) => const skymapPage(),
      },
    );
  }
}
