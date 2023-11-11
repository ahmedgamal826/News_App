import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/category_model.dart';

import 'category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  final List<CategoryModel> categories = const [
    CategoryModel(
      image: 'assets/Business_news.jpeg',
      categoryName: 'business',
    ),
    CategoryModel(
      image: 'assets/Sports News.jpeg',
      categoryName: 'sports',
    ),
    CategoryModel(
      image: 'assets/Health News.jpeg',
      categoryName: 'health',
    ),
    CategoryModel(
      image: 'assets/Science News.jpg',
      categoryName: 'science',
    ),
    CategoryModel(
      image: 'assets/Technology News .png',
      categoryName: 'technology',
    ),
    CategoryModel(
      image: 'assets/general.png',
      categoryName: 'general',
    ),
    CategoryModel(
      image: 'assets/Entertaiment.jpeg',
      categoryName: 'entertainment',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categories[index],
            );
          }),
    );
  }
}
