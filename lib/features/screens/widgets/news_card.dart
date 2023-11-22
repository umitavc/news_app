// import 'package:flutter/material.dart';
// import 'package:news_case/core/services/api_services.dart';

// class NewsCard extends StatelessWidget {
//   const NewsCard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final apiService = APIService();
//     return FutureBuilder(
//         future: apiService.getNews(),
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             return ListView.builder(
              
//                 shrinkWrap: true,
//                 itemCount: snapshot.data!.length,
//                 itemBuilder: (context, index) {
//                   return Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 12),
//                     child: Container(
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                         color: Colors.white,
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.grey.withOpacity(0.5),
//                             spreadRadius: 1,
//                             blurRadius: 1,
//                             offset: const Offset(0, 1), // changes position of shadow
//                           ),
//                         ],
//                       ),
//                       child: Column(
//                         children: [
//                           ClipRRect(
//                             borderRadius: const BorderRadius.only(
//                               topLeft: Radius.circular(10),
//                               topRight: Radius.circular(10),
//                             ),
//                             child: Image.network(
//                               snapshot.data![index].title.toString(),
//                               fit: BoxFit.cover,
//                               width: double.infinity,
//                             ),
//                           ),
//                           Align(
//                             alignment: Alignment.centerLeft,
//                             child: Padding(
//                               padding: const EdgeInsets.all(6),
//                               child: Text(
//                                 snapshot.data![index].description.toString(),
//                                 style: TextStyle(fontSize: 14, color: Colors.grey.shade800),
//                               ),
//                             ),
//                           ),
//                           Expanded(
//                             child: Padding(
//                               padding: EdgeInsets.symmetric(horizontal: 6, vertical: 5),
//                               child: Text(
//                                 snapshot.data![index].title.toString(),
//                                 style: const TextStyle(fontSize: 18, color: Colors.black),
//                                 overflow: TextOverflow.ellipsis,
//                                 maxLines: 5,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   );
//                 });
//           } else if (snapshot.hasError) {
//             return const Center(child: Text('Error'));
//           } else {
//             return const Center(child: CircularProgressIndicator());
//           }
//         });
//   }
// }
