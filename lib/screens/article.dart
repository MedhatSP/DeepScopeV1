import 'package:flutter/material.dart';
import 'package:news_app/models/articlemodel.dart';
import 'package:news_app/widgets/image_container.dart';

import '../widgets/custom_tag.dart';

class articalepage extends StatelessWidget {
  const articalepage({Key? key}) : super(key: key);
  static const routeName = '/article';
  @override
  Widget build(BuildContext context) {
    final article = ModalRoute.of(context)?.settings.arguments as Article;
    return imageContainer(
      width: double.infinity,
      imageUrl: article.imageUrl,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: ListView(
          children: [
            _newsHeadline(
              article: article,
            ),
            _newsBody(article: article)
          ],
        ),
      ),
    );
  }
}

class _newsBody extends StatelessWidget {
  const _newsBody({
    Key? key,
    required this.article,
  }) : super(key: key);

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            children: [
              CustomTag(
                backgroundcolor: Colors.black,
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundImage: NetworkImage(
                      article.authorImageUrl,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    article.author,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              CustomTag(
                backgroundcolor: Colors.grey.shade200,
                children: [
                  const Icon(
                    Icons.timer,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    '${DateTime.now().difference(article.createdAt).inHours}h',
                    style: Theme.of(context).textTheme.bodyMedium!,
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              CustomTag(
                backgroundcolor: Colors.grey.shade200,
                children: [
                  const Icon(
                    Icons.remove_red_eye,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    '${article.views}',
                    style: Theme.of(context).textTheme.bodyMedium!,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            article.title,
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            article.body,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  height: 1.5,
                ),
          ),
        ],
      ),
    );
  }
}

class _newsHeadline extends StatelessWidget {
  const _newsHeadline({Key? key, required this.article}) : super(key: key);
  final article;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
          ),
          CustomTag(
            backgroundcolor: Colors.grey.withAlpha(150),
            children: [
              Text(
                article.category,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Colors.white),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            article.title,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            article.subtitle,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.white,
                ),
          ),
        ],
      ),
    );
  }
}
