import 'package:flutter/material.dart';
import 'package:news_app/models/articlemodel.dart';
import 'package:news_app/models/objectsmodel.dart';
import 'package:news_app/widgets/Gnavigation_bar.dart';
import 'search.dart';
import 'result.dart';

import '../widgets/navigation_bar.dart';

class skymapPage extends StatelessWidget {
  const skymapPage({Key? key}) : super(key: key);
  static const routeName = '/skymap';

  @override
  Widget build(BuildContext context) {
    final List Objects = Object.objects;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Skymap',
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
      extendBodyBehindAppBar: true,
      bottomNavigationBar: const navigationBar(
        index: 1,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.transparent,
        onPressed: () {
          Navigator.pushNamed(context, searchpage.routeName);
        },
        child: Image(
          image: AssetImage(
            'assets/telescope_icon.png',
          ),
          fit: BoxFit.fill,
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child:
            // InteractiveViewer(
            //   panEnabled: true,
            //   constrained: false,
            //   maxScale: 2,
            //   minScale: 0.4,
            //   child:
            Stack(
          children: [
            Container(
              width: 1500,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/background.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(340, 350, 0, 0),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcKg4p8Vh6dXOGs5nxr9NpyXpW-iv_24AX3w&usqp=CAU'),
                  radius: 40,
                )),
            Container(
              margin: EdgeInsets.fromLTRB(368, 435, 0, 0),
              child: Text(
                "Sun",
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(265, 420, 0, 0),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, resultpage.routeName,
                        arguments: Objects[1]);
                  },
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(Objects[1].ImageUrl),
                    radius: 25,
                  ),
                )),
            Container(
              margin: EdgeInsets.fromLTRB(268, 475, 0, 0),
              child: Text(
                Objects[1].Name,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(530, 430, 0, 0),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, resultpage.routeName,
                        arguments: Objects[0]);
                  },
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(Objects[0].ImageUrl),
                    radius: 20,
                  ),
                )

                //color: Colors.black,
                ),
            Container(
              margin: EdgeInsets.fromLTRB(536, 475, 0, 0),
              child: Text(
                Objects[0].Name,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(140, 470, 0, 0),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, resultpage.routeName,
                        arguments: Objects[2]);
                  },
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(Objects[2].ImageUrl),
                    radius: 25,
                  ),
                )),
            Container(
              margin: EdgeInsets.fromLTRB(150, 525, 0, 0),
              child: Text(
                Objects[2].Name,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(800, 300, 0, 0),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, resultpage.routeName,
                        arguments: Objects[3]);
                  },
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(Objects[3].ImageUrl),
                    radius: 25,
                  ),
                )
                //color: Colors.black,
                ),
            Container(
              margin: EdgeInsets.fromLTRB(810, 350, 0, 0),
              child: Text(
                Objects[3].Name,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(900, 260, 0, 0),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, resultpage.routeName,
                        arguments: Objects[4]);
                  },
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(Objects[4].ImageUrl),
                    radius: 30,
                  ),
                )
                //color: Colors.black,
                ),
            Container(
              margin: EdgeInsets.fromLTRB(910, 318, 0, 0),
              child: Text(
                Objects[4].Name,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(1000, 210, 0, 0),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, resultpage.routeName,
                      arguments: Objects[5]);
                },
                child: CircleAvatar(
                  backgroundImage: NetworkImage(Objects[5].ImageUrl),
                  radius: 25,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(1012, 260, 0, 0),
              child: Text(
                Objects[5].Name,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(1100, 180, 0, 0),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://e7.pngegg.com/pngimages/922/296/png-clipart-uranus-planet-solar-system-neptune-saturn-venus-miscellaneous-sphere.png"),
                  radius: 25,
                )),
            Container(
              margin: EdgeInsets.fromLTRB(1108, 228, 0, 0),
              child: Text(
                "Uranus ",
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
                width: 30,
                height: 30,
                margin: EdgeInsets.fromLTRB(1200, 150, 0, 0),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://e7.pngegg.com/pngimages/205/649/png-clipart-round-blue-logo-discovery-of-neptune-planet-solar-system-uranus-planet-miscellaneous-purple.png'),
                  radius: 22.5,
                )),
            Container(
              margin: EdgeInsets.fromLTRB(1200, 180, 0, 0),
              child: const Text(
                "Neptune",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        //),
      ),
    );
  }
}
