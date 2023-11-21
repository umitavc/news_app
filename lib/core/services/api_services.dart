import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_case/core/constants/api_constants.dart';
import 'package:news_case/data/models/news_model.dart';






// class APIService {
//   Future<List<NewsModel>> getNews() async {
//     final response = await http.get(Uri.parse(url));

//     if (response.statusCode == 200) {
//       final List<dynamic> jsonResponse = jsonDecode(response.body);

//       List<NewsModel> news = jsonResponse
//           .map((json) => NewsModel.fromJson(json as Map<String, dynamic>))
//           .toList(); 

//       return news;
//     } else {
//       throw Exception('Failed to load news');
//     }
//   }
// }


class APIService {
  Future<List<NewsModel>> getNews() async {
    final response =await http.get(Uri.parse(url));

    List<NewsModel> news = [];
   final responseList = jsonDecode(response.body) as List<dynamic>;

   for (var i = 0; i < responseList.length; i++) {
     news.add(NewsModel.fromJson(responseList[i] as Map<String, dynamic>));
   }
    return news;
  }  
}



