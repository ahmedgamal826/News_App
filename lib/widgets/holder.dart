// import 'package:dio/dio.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:news_app_ui_setup/models/article_model.dart';
// import 'package:news_app_ui_setup/services/new_services.dart';
// import 'news_tile.dart';

// class NewsListView extends StatefulWidget {
//   const NewsListView({
//     super.key,
//     required List<AtricleModel> articles,
//   });

//   @override
//   State<NewsListView> createState() => _NewsListViewState();
// }

// class _NewsListViewState extends State<NewsListView> {
//   List<AtricleModel> articles = [];

//   bool isLoading = true;

//   @override
//   void initState() {
//     super.initState();

//     getGeneralNews();
//   }

//   Future<void> getGeneralNews() async {
//     articles = await NewsService(Dio()).getNews();
//     isLoading = false;

//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return isLoading
//         ? SliverToBoxAdapter(
//             child: Center(
//                 child: Padding(
//             padding: const EdgeInsets.symmetric(vertical: 200),
//             child: CircularProgressIndicator(),
//           )))
//         : SliverList(
//             delegate: SliverChildBuilderDelegate(
//               childCount: articles.length,
//               (context, index) {
//                 return Padding(
//                   padding: const EdgeInsets.only(bottom: 22),
//                   child: NewsTile(
//                     atricleModel: articles[index],
//                   ),
//                 );
//               },
//             ),
//           );
//   }
// }
