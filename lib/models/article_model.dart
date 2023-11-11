class ArticleModel {
  final String publishedAt;
  final String author;
  final String? image;
  final String title;
  final String? subTitle;
  final String? url;

  ArticleModel(
      {required this.publishedAt,
      required this.author,
      required this.image,
      required this.title,
      required this.subTitle,
      required this.url});

  factory ArticleModel.fromJson(json) {
    // named Constructor
    return ArticleModel(
        author: json['author'],
        publishedAt: json['publishedAt'],
        image: json['urlToImage'],
        title: json['title'],
        subTitle: json['description'],
        url: json['url']);
  }
}
