import 'package:flutter/material.dart';
import 'package:news_app/models/objectsmodel.dart';
import 'package:news_app/screens/result.dart';
import 'package:news_app/widgets/Gnavigation_bar.dart';
import '../models/articlemodel.dart';
import '../widgets/image_container.dart';
import '../widgets/navigation_bar.dart';

class searchpage extends StatefulWidget {
  searchpage({Key? key}) : super(key: key);
  static const routeName = '/search';
  @override
  State<searchpage> createState() => _searchpageState();
}

class _searchpageState extends State<searchpage> {
  final List Objects = Object.objects;
  List<dynamic> _foundObjects = [];
  @override
  initState() {
    _foundObjects = Objects;
    super.initState();
  }

  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = Objects;
    } else {
      results = Objects.where((user) =>
              user.Name.toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }
    setState(() {
      _foundObjects = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return imageContainer(
      width: double.infinity,
      imageUrl: "https://wallpaperaccess.com/full/922691.jpg",
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
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
        bottomNavigationBar: const navigationBar(
          index: 2,
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.10,
                  ),
                  Text(
                    'Search',
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 40,
                        ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Select your target object.',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextField(
                    onChanged: (value) => _runFilter(value),
                    decoration: InputDecoration(
                        hintText: 'Search',
                        fillColor: Colors.grey.shade200.withOpacity(0.8),
                        filled: true,
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        suffixIcon: const RotatedBox(
                            quarterTurns: 1,
                            child: Icon(
                              Icons.tune,
                              color: Colors.grey,
                            )),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none)),
                  )
                ],
              ),
            ),
            _foundObjects.isNotEmpty
                ? ListView.builder(
                    padding: const EdgeInsets.all(10),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: _foundObjects.length,
                    itemBuilder: (context, index) => InkWell(
                      child: InkWell(
                        onTap: () => Navigator.pushNamed(
                            context, resultpage.routeName,
                            arguments: _foundObjects[index]),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(35),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0, 4),
                                    color: Colors.black.withOpacity(0.15),
                                    spreadRadius: 4,
                                    blurRadius: 50)
                              ]),
                          margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                    _foundObjects[index].ImageUrl,
                                  ),
                                  radius: 40,
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      _foundObjects[index].Name,
                                      overflow: TextOverflow.clip,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge
                                          ?.copyWith(
                                              fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      _foundObjects[index].Title,
                                      maxLines: 2,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                            height: 1.5,
                                          ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                : const Text(
                    'No results found',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
          ],
        ),
      ),
    );
  }
}
