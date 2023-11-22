import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:news_case/core/services/api_services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final apiService = APIService();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Center(
          child: Text(
            'appbartitle'.tr(),
            style: const TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            children: [
              FutureBuilder(
                future: apiService.getNews(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Expanded(
                      child: GridView.builder(
                        shrinkWrap: true,
                        itemCount: 12,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: 300,
                          crossAxisSpacing: 10,
                          crossAxisCount: 2,
                        ),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12),
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
                                  ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    ),
                                    child: Text(
                                      snapshot.data![index].email.toString(),
                                      // fit: BoxFit.cover,
                                      // width: double.infinity,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.all(6),
                                      child: Text(
                                        snapshot.data![index].name.toString(),
                                        style: TextStyle(fontSize: 14, color: Colors.grey.shade800),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 5),
                                      child: Text(
                                        snapshot.data![index].body.toString(),
                                        style: const TextStyle(fontSize: 18, color: Colors.black),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 5,
                                      ),
                                    ),
                                  ),
                                ],
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
