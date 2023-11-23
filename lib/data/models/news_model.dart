class NewsArticle {
  String uuid;
  String title;
  String description;
  String keywords;
  String snippet;
  String url;
  String imageUrl;
  String language;
  String publishedAt;
  String source;
  List<String> categories;

  NewsArticle({
    required this.uuid,
    required this.title,
    required this.description,
    required this.keywords,
    required this.snippet,
    required this.url,
    required this.imageUrl,
    required this.language,
    required this.publishedAt,
    required this.source,
    required this.categories,
  });

  factory NewsArticle.fromJson(Map<String, dynamic> json) {
    return NewsArticle(
      uuid: json['uuid'].toString(),
      title: json['title'].toString(),
      description: json['description'].toString(),
      keywords: json['keywords'].toString(),
      snippet: json['snippet'].toString(),
      url: json['url'].toString(),
      imageUrl: json['image_url'].toString(),
      language: json['language'].toString(),
      publishedAt: json['published_at'].toString(),
      source: json['source'].toString(),
      categories: (json['categories'] as List).map((e) => e.toString()).toList(),
    );
  }
}

class NewsData {
  NewsMeta meta;
  List<NewsArticle> data;

  NewsData({
    required this.meta,
    required this.data,
  });

  factory NewsData.fromJson(Map<String, dynamic> json) {
    return NewsData(
      meta: NewsMeta.fromJson(json['meta'] as Map<String, dynamic>),
      data: List<NewsArticle>.from(
        (json['data'] as List).map((article) => NewsArticle.fromJson(article as Map<String, dynamic>)),
      ),
    );
  }
}

class NewsMeta {
  int found;
  int returned;
  int limit;
  int page;

  NewsMeta({
    required this.found,
    required this.returned,
    required this.limit,
    required this.page,
  });

  factory NewsMeta.fromJson(Map<String, dynamic> json) {
    return NewsMeta(
      found: json['found'] as int,
      returned: json['returned'] as int,
      limit: json['limit'] as int,
      page: json['page'] as int,
    );
  }
}
