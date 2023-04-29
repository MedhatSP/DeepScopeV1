import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:news_app/models/articlemodel.dart';
import 'package:news_app/models/objectsmodel.dart';
import 'package:url_launcher/url_launcher.dart';

class resultpage extends StatefulWidget {
  const resultpage({Key? key}) : super(key: key);
  static const routeName = '/result';

  @override
  State<resultpage> createState() => _resultpageState();
}

class _resultpageState extends State<resultpage> {
  @override
  Widget build(BuildContext context) {
    final object = ModalRoute.of(context)?.settings.arguments as Object;
    _launchURL() async {
      String url = object.InfoUrl;
      final uri = Uri.parse(url);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri);
      } else {
        throw 'Could not launch $url';
      }
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        actions: [
          Container(
            padding: EdgeInsets.all(10),
            child: CircleAvatar(
              radius: 15,
              backgroundImage: NetworkImage(
                Article.Articles[0].authorImageUrl,
              ),
            ),
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Container(
            child: CustomPaint(
              size: Size(
                  MediaQuery.of(context).size.width,
                  (MediaQuery.of(context).size.width * 1.7777777777777777)
                      .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
              painter: RPSCustomPainter(),
            ),
          ),
          Align(
            alignment: const Alignment(0, -0.6),
            child: ListView(
              children: [
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const SizedBox(
                    height: 100,
                  ),
                  Text(
                    object.Name,
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        height: 1.25,
                        fontSize: 40),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      object.ImageUrl,
                    ),
                    radius: 120,
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    // decoration:
                    //     BoxDecoration(boxShadow: [BoxShadow(blurRadius: 20)]),
                    child: Stack(
                      overflow: Overflow.visible,
                      children: [
                        CustomPaint(
                          size: Size(
                              MediaQuery.of(context).size.width * 0.8,
                              (MediaQuery.of(context).size.width *
                                      0.8 *
                                      1.1428571428571428)
                                  .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                          painter: RPSCustomPainter2(),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const SizedBox(
                                height: 50,
                              ),
                              Text(
                                object.Title,
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      height: 1.25,
                                    ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                object.Subtitle,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      color: Colors.grey,
                                    ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  ElevatedButton(
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.white),
                                        elevation:
                                            MaterialStateProperty.all(10),
                                        shape: MaterialStateProperty.all(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        20.0))),
                                      ),
                                      onPressed: _launchURL,
                                      child: Text(
                                        'Learn More',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge!
                                            .copyWith(
                                                color: const Color.fromARGB(
                                                    255, 2, 32, 55)),
                                      )),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.white),
                                      elevation: MaterialStateProperty.all(10),
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20.0))),
                                    ),
                                    onPressed: () {},
                                    child: Container(
                                      child: Text(
                                        'GOTO',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge!
                                            .copyWith(
                                                color: const Color.fromARGB(
                                                    255, 2, 32, 55)),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ]),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class RPSCustomPainter2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 2, 32, 55)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(size.width * 0.1785714, 0);
    path0.quadraticBezierTo(
        size.width * 0.1250000, 0, size.width * 0.1071429, 0);
    path0.quadraticBezierTo(
        0, size.height * -0.0046875, 0, size.height * 0.0937500);
    path0.quadraticBezierTo(
        0, size.height * 0.7042969, 0, size.height * 0.9078125);
    path0.quadraticBezierTo(
        0, size.height * 0.9996250, size.width * 0.1071429, size.height);
    path0.lineTo(size.width * 0.8964286, size.height);
    path0.quadraticBezierTo(size.width * 1.0008929, size.height, size.width,
        size.height * 0.9062500);
    path0.cubicTo(size.width, size.height * 0.7031250, size.width,
        size.height * 0.2968750, size.width, size.height * 0.0937500);
    path0.quadraticBezierTo(size.width, 0, size.width * 0.8928571, 0);
    path0.quadraticBezierTo(
        size.width * 0.8392857, 0, size.width * 0.8214286, 0);
    path0.quadraticBezierTo(size.width * 0.5017857, size.height * 0.2515625,
        size.width * 0.1785714, 0);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 2, 32, 55)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(0, 0);
    path0.lineTo(size.width, 0);
    path0.quadraticBezierTo(size.width, size.height * 0.2578125, size.width,
        size.height * 0.3437500);
    path0.quadraticBezierTo(size.width * 0.9444444, size.height * 0.4371875,
        size.width * 0.7777778, size.height * 0.4375000);
    path0.lineTo(size.width * 0.2222222, size.height * 0.4375000);
    path0.quadraticBezierTo(size.width * 0.0555556, size.height * 0.4390625, 0,
        size.height * 0.5312500);

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
