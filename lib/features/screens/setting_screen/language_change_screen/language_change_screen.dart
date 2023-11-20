import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

@RoutePage()
class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SafeArea(child: Center(
        child: InkWell(
              onTap: () {
                final currentLocale = EasyLocalization.of(context)!.locale;
      
                if (currentLocale == const Locale('tr')) {
                  EasyLocalization.of(context)!.setLocale(const Locale('en'));
                } else {
                  EasyLocalization.of(context)!.setLocale(const Locale('tr'));
                }
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 50,
                width: 200,
                child: Center(
                    child: Text(
                  'changeLanguage'.tr(),
                  style: const TextStyle(color: Colors.white),
                )),
              ),
            ),
      )),
    );
  }
}