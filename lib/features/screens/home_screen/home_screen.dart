// ignore_for_file: inference_failure_on_instance_creation

import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:news_case/core/services/api_services.dart';
import 'package:news_case/features/screens/widgets/news_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

@override

  
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
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            children: [
              NewsCard(),
            ],
          ),
        ),
      ),
    );
  }
}
