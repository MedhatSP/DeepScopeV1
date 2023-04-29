import 'package:flutter/material.dart';
import 'package:news_app/screens/Discover.dart';
import 'package:news_app/screens/Skymap.dart';
import 'package:news_app/screens/article.dart';
import 'package:news_app/screens/home.dart';
import 'package:news_app/screens/search.dart';

class NvBar extends StatelessWidget {
  const NvBar({
    Key? key,
    required this.index,
  }) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: index,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black.withAlpha(100),
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.pushNamed(context, homepage.routeName);
              },
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: const Icon(Icons.map),
              onPressed: () {
                Navigator.pushNamed(context, skymapPage.routeName);
              },
            ),
            label: 'SkyMap',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                Navigator.pushNamed(context, searchpage.routeName);
              },
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: const Icon(Icons.newspaper),
              onPressed: () {
                Navigator.pushNamed(context, discoverpage.routeName);
              },
            ),
            label: 'News',
          )
        ]);
  }
}
