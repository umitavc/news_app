import 'package:flutter/material.dart';
import 'package:news_case/core/services/api_services.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final apiService = APIService();
    return FutureBuilder(
      future: apiService.getNews(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return RefreshIndicator(
            onRefresh: apiService.getNews,
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: snapshot.data!.data.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 300,
                crossAxisSpacing: 10,
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) {
                final article = snapshot.data!.data[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: InkWell(
                    onTap: () async {
                      const url = 'www.facebook.com';
                      final Uri uri = Uri(scheme: 'https', host: url);
                      if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
                       
                        throw 'Can not launch url';
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: const Offset(0, 1),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child: ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                child: (article.imageUrl != null && article.imageUrl.isNotEmpty)
                                    ? Image.network(
                                        article.imageUrl.toString(),
                                        fit: BoxFit.cover,
                                        width: double.infinity,
                                      )
                                    : const SizedBox()),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(6),
                              child: Text(
                                article.title.toString(),
                                style: TextStyle(fontSize: 14, color: Colors.grey.shade800),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 4,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 6, left: 6, top: 5, bottom: 10),
                              child: Text(
                                article.description.toString(),
                                style: const TextStyle(fontSize: 16, color: Colors.black),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 4,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
