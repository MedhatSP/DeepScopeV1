import 'package:flutter/material.dart';
import 'package:news_app/models/articlemodel.dart';
import 'package:news_app/widgets/Gnavigation_bar.dart';
import 'package:news_app/widgets/image_container.dart';
import 'article.dart';
import '../widgets/navigation_bar.dart';

class discoverpage extends StatelessWidget {
  discoverpage({Key? key}) : super(key: key);
  static const routeName = '/discover';
  List<String> tabs = [
    'Cosmology',
    'Astrophysics',
    'Solor System',
    'Telescops',
    'Exploration'
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
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
          index: 3,
        ),
        body: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            _discoverNews(),
            _newsCategory(tabs: tabs),
          ],
        ),
      ),
    );
    ;
  }
}

class _newsCategory extends StatelessWidget {
  _newsCategory({
    Key? key,
    required this.tabs,
  }) : super(key: key);
  final List<String> tabs;
  final articls = Article.Articles;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          isScrollable: true,
          indicatorColor: Colors.black,
          tabs: tabs
              .map((tab) => Tab(
                    icon: Text(
                      tab,
                      style:
                          Theme.of(context).textTheme.headlineSmall!.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                  ))
              .toList(),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height,
          child: TabBarView(
            children: tabs
                .map(
                  (tab) => ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: tabs.length,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () => Navigator.pushNamed(
                            context, articalepage.routeName,
                            arguments: articls[index]),
                        child: Row(
                          children: [
                            imageContainer(
                              width: 80,
                              height: 80,
                              imageUrl: articls[index].imageUrl,
                              margin: const EdgeInsets.all(10),
                              borderRadius: 5,
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    articls[index].title,
                                    maxLines: 2,
                                    overflow: TextOverflow.clip,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      const Icon(
                                        Icons.schedule,
                                        size: 18,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                          '${DateTime.now().difference(articls[index].createdAt).inHours} hours ago',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall!),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      const Icon(
                                        Icons.visibility,
                                        size: 18,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        '${articls[index].views} views',
                                        style: const TextStyle(fontSize: 12),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                )
                .toList(),
          ),
        )
      ],
    );
  }
}

class _discoverNews extends StatelessWidget {
  const _discoverNews({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Discover',
            style: Theme.of(context).textTheme.headline4!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'Astronomy news from all over the world',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: 'Search',
                fillColor: Colors.grey.shade200,
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
    );
  }
}
