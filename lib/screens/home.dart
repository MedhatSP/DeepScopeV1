import 'package:flutter/material.dart';
import 'package:news_app/models/articlemodel.dart';
import 'package:news_app/screens/Discover.dart';
import 'package:news_app/screens/article.dart';
import 'package:news_app/screens/result.dart';
import 'package:news_app/screens/search.dart';
import 'package:news_app/widgets/custom_tag.dart';
import 'package:news_app/widgets/Gnavigation_bar.dart';

import '../widgets/image_container.dart';

class homepage extends StatefulWidget {
  homepage({Key? key}) : super(key: key);
  static const routeName = '/';
  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  Article article = Article.Articles[0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromRGBO(54, 4, 63, 1),
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
      bottomNavigationBar: navigationBar(
        index: 0,
      ),
      extendBodyBehindAppBar: true,
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          _newsOfTheDay(article: article),
          _breakingNews(
            articles: Article.Articles,
          )
        ],
      ),
    );
  }
}

class _breakingNews extends StatelessWidget {
  const _breakingNews({
    Key? key,
    required this.articles,
  }) : super(key: key);
  final List<Article> articles;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Breaking News!',
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      //color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              TextButton(
                  onPressed: () => Navigator.pushNamed(
                        context,
                        discoverpage.routeName,
                      ),
                  child: Text(
                    'More',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        //color: Colors.white,
                        ),
                  ))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 250,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: articles.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: const EdgeInsets.only(right: 10),
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: InkWell(
                    onTap: () => Navigator.pushNamed(
                        context, articalepage.routeName,
                        arguments: articles[index]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        imageContainer(
                          width: MediaQuery.of(context).size.width * 0.5,
                          imageUrl: articles[index].imageUrl,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          articles[index].title,
                          maxLines: 2,
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    height: 1.5,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                            '${DateTime.now().difference(articles[index].createdAt).inHours} hours ago',
                            style: Theme.of(context).textTheme.bodySmall!),
                        const SizedBox(
                          height: 5,
                        ),
                        Text('by: ${articles[index].author}',
                            style: Theme.of(context).textTheme.bodySmall!),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class _newsOfTheDay extends StatelessWidget {
  const _newsOfTheDay({
    Key? key,
    required this.article,
  }) : super(key: key);

  final Article article;

  @override
  Widget build(BuildContext context) {
    return imageContainer(
      height: MediaQuery.of(context).size.height * 0.45,
      imageUrl:
          'https://static01.nyt.com/images/2023/01/03/multimedia/01sci-spacecalendar-forecast/live-blog-exp-20230101-astronomy-space-calendar-header-1-f71e-superJumbo.jpg?quality=75&auto=webp',
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTag(
            backgroundcolor: Colors.grey.withAlpha(150),
            children: [
              Text(
                'News of the Day',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Colors.white),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            article.title,
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  height: 1.25,
                ),
          ),
          TextButton(
              onPressed: () =>
                  Navigator.pushNamed(context, searchpage.routeName),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Learn More',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: Colors.white),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Icons.arrow_right_alt,
                    color: Colors.white,
                  )
                ],
              ))
        ],
      ),
    );
  }
}
