import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:news_case/core/routers/app_router.dart';
import 'package:news_case/core/services/api_services.dart';
import 'package:news_case/features/screens/bottom_navbar/bottom_navbar_viewmodel.dart';
import 'package:news_case/features/screens/setting_screen/setting_viewmodel.dart';
import 'package:provider/provider.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
   runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MainViewModel()),
         ChangeNotifierProvider(create: (_) => SettingsProvider()),
        
      ],
      child: EasyLocalization(
        supportedLocales: const [Locale('en',), Locale('tr',)],
        path: 'assets/translations',
        fallbackLocale: const Locale('en',),
        child:  MyApp(),),
    ),
  );
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
     APIService apiService = APIService();
     apiService.getNews();
    final appRouter = AppRouter();
    return  MaterialApp.router(
      debugShowCheckedModeBanner: false,
      
      routerConfig: appRouter.config(),
       localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      //home: const SplashSceen(),
    );
  }
}
