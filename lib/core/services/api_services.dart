import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_case/core/constants/api_constants.dart';
import 'package:news_case/data/models/news_model.dart';

class APIService {
  Future<NewsData> getNews() async {
    final response = await http.get(Uri.parse(url));

        
        final model  = NewsData.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
       

  
    return model;
  }
}

// class APIService {
//   Future<List<NewsModel>> getNews() async {
//     final response = await http.get(Uri.parse(url));

//     List<NewsModel> news = [];
//     List<dynamic> responseList = jsonDecode(response.body) as List<dynamic>;

//     for (var i = 0; i < responseList.length; i++) {
//       news.add(NewsModel.fromJson(responseList[i] as Map<String, dynamic>));
//     }
//     return news;
//   }
// }

