import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:news_app/screens/Discover.dart';
import 'package:news_app/screens/Skymap.dart';
import 'package:news_app/screens/article.dart';
import 'package:news_app/screens/home.dart';
import 'package:news_app/screens/search.dart';

class navigationBar extends StatelessWidget {
  const navigationBar({
    Key? key,
    required this.index,
  }) : super(key: key);
  final index;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
            color: Colors.black.withOpacity(.1),
          )
        ],
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
          child: GNav(
            selectedIndex: index,
            backgroundColor: Colors.black,
            rippleColor: Colors.black, // Color.fromARGB(224, 158, 158, 158),
            hoverColor: Colors.grey.withOpacity(0.3),
            tabShadow: [
              BoxShadow(
                color: Colors.black, //Colors.grey.withOpacity(0.5),
              )
            ],
            gap: 8,
            activeColor: Colors.white,
            iconSize: 24,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            duration: Duration(milliseconds: 400),
            tabBackgroundColor: Colors.grey.withOpacity(0.3),
            color: Colors.grey[600],
            tabs: [
              GButton(
                  icon: LineIcons.home,
                  text: 'Home',
                  onPressed: () {
                    Navigator.pushNamed(context, homepage.routeName);
                  }),
              GButton(
                  icon: LineIcons.map,
                  text: 'Skymap',
                  onPressed: () {
                    Navigator.pushNamed(context, skymapPage.routeName);
                  }),
              GButton(
                  icon: LineIcons.search,
                  text: 'Search',
                  onPressed: () {
                    Navigator.pushNamed(context, searchpage.routeName);
                  }),
              GButton(
                  icon: LineIcons.newspaper,
                  text: 'News',
                  onPressed: () {
                    Navigator.pushNamed(context, discoverpage.routeName);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
