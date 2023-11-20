
import 'package:auto_route/auto_route.dart';
import 'package:news_case/features/screens/bottom_navbar/bottom_navbar.dart';
import 'package:news_case/features/screens/setting_screen/language_change_screen/language_change_screen.dart';
import 'package:news_case/features/screens/slapsh_screen/splash_screen.dart';

part 'app_router.gr.dart';            
              
@AutoRouterConfig()      
class AppRouter extends _$AppRouter {      
    
  @override      
  List<AutoRoute> get routes => [      
  
   AutoRoute(page: BottomNavBarRoute.page ,initial: true),
   AutoRoute(page: LanguageRoute.page ,),       
   ];  
 }
