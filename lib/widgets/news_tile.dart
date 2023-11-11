import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:news_app_ui_setup/models/article_model.dart';
import 'package:news_app_ui_setup/models/category_model.dart';
import 'package:url_launcher/url_launcher.dart';

// cached network image
class NewsTile extends StatelessWidget {
  const NewsTile(
      {super.key,
      required this.articleModel,
      required this.imageUrl,
      required this.categoryName});

  final ArticleModel articleModel;

  final String imageUrl;
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text(
            articleModel.author,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.red,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: InkWell(
              onTap: () {
                String link = articleModel.url!;
                launchUrl(
                  Uri.parse(link),
                );
              },
              child: articleModel.image != null
                  ? Image.network(
                      articleModel.url!,
                      height: 200,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    )
                  : Image.asset('assets/Egypt News.jpeg'),
            )),
        const SizedBox(
          height: 12,
        ),
        InkWell(
          onTap: () {
            String link = articleModel.url!;
            launchUrl(
              Uri.parse(link),
            );
          },
          child: Text(
            articleModel.title,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.black87,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          articleModel.subTitle ?? '',
          maxLines: 2,
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
