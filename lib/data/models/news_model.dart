// class NewsModel {
//   final String uuid;
//   final String title;
//   final String description;
//   final String keywords;
//   final String snippet;
//   final String url;
//   final String imageUrl;
//   final String language;
//   final String publishedAt;
//   final String source;
//   final List<String> categories;
//   final String relevanceScore;

//   NewsModel({
//     required this.uuid,
//     required this.title,
//     required this.description,
//     required this.keywords,
//     required this.snippet,
//     required this.url,
//     required this.imageUrl,
//     required this.language,
//     required this.publishedAt,
//     required this.source,
//     required this.categories,
//     required this.relevanceScore,
//   });

//  factory NewsModel.fromJson(Map<String, dynamic> json) {
//   return NewsModel(
//     uuid: json['uuid'] as String? ?? '',
//     title: json['title'] as String? ?? '',
//     description: json['description'] as String? ?? '',
//     keywords: json['keywords'] as String? ?? '',
//     snippet: json['snippet'] as String? ?? '',
//     url: json['url'] as String? ?? '',
//     imageUrl: json['image_url'] as String? ?? '',
//     language: json['language'] as String? ?? '',
//     publishedAt: json['published_at'] as String? ?? '',
//     source: json['source'] as String? ?? '',
//     categories: (json['categories'] as List<dynamic>?)
//         ?.map((e) => e.toString())
//         .toList() ?? [],
//     relevanceScore: json['relevance_score'] as String? ?? '',
//   );
// }


//   Map<String, dynamic> toJson() {
//     return {
//       'uuid': uuid,
//       'title': title,
//       'description': description,
//       'keywords': keywords,
//       'snippet': snippet,
//       'url': url,
//       'image_url': imageUrl,
//       'language': language,
//       'published_at': publishedAt,
//       'source': source,
//       'categories': categories,
//       'relevance_score': relevanceScore,
//     };
//   }
// }



// class NewsModel {
//   String? userId;
//   String? id;
//   String? title;
//   String? body;

//   NewsModel({this.userId, this.id, this.title, this.body});

//   NewsModel.fromJson(Map<String, dynamic> json) {
//     userId = json['userId'] != null ? json['userId'].toString() : '';
//     id = json['id'] != null ? json['id'].toString() : '';
//     title = json['name'] != null ? json['name'].toString() : '';
//     body = json['body'] != null ? json['body'].toString() : '';
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['userId'] = userId;
//     data['id'] = id;
//     data['title'] = title;
//     data['body'] = body;
//     return data;
//   }
// }

class NewsModel {
  String? uuid;
  String? title;
  String? description;
  String? keywords;
  String? snippet;
  String? url;
  String? imageUrl;
  String? language;
  String? publishedAt;
  String? source;
  List<Null>? categories;
  Null? relevanceScore;

  NewsModel(
      {this.uuid,
      this.title,
      this.description,
      this.keywords,
      this.snippet,
      this.url,
      this.imageUrl,
      this.language,
      this.publishedAt,
      this.source,
      this.categories,
      this.relevanceScore});

  NewsModel.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'] != null ? json['uuid'].toString() : '';
    title = json['title'] !=null ? json['title'].toString() : '';
    description = json['description'] != null ? json['description'].toString() : '';
    keywords = json['keywords'] !=null ? json['keywords'].toString() : '';
    snippet = json['snippet'] != null ? json['snippet'].toString() : '';
    url = json['url'] != null ? json['url'].toString() : '';
    imageUrl = json['image_url'] != null ? json['image_url'].toString() : '';
    language = json['language'] != null ? json['language'].toString() : '';
    publishedAt = json['published_at'] != null ? json['published_at'].toString() : '';
    source = json['source'] != null ? json['source'].toString() : '';
    categories: (json['categories'] as List<dynamic>?)
         ?.map((e) => e.toString())
       .toList() ?? [];
     relevanceScore: json['relevance_score'] as String? ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['uuid'] = uuid;
    data['title'] = title;
    data['description'] = description;
    data['keywords'] = keywords;
    data['snippet'] = snippet;
    data['url'] = url;
    data['image_url'] = imageUrl;
    data['language'] = language;
    data['published_at'] = publishedAt;
    data['source'] = source;
    data['categories'] = categories as List<Null>;
    data['relevance_score'] = relevanceScore;
    return data;
  }
}
