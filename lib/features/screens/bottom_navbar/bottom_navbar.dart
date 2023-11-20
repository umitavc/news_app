import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:news_case/features/screens/bottom_navbar/bottom_navbar_viewmodel.dart';
import 'package:news_case/features/screens/home_screen/home_screen.dart';
import 'package:news_case/features/screens/setting_screen/setting_screen.dart';
import 'package:news_case/features/screens/widgets/bottom_navbar.dart';
import 'package:provider/provider.dart';


@RoutePage()
class BottomNavBarScreen extends StatelessWidget {
  const BottomNavBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
   final viewModel = context.read<MainViewModel>();
    return Scaffold(
      bottomNavigationBar: const MainBottomNavbarWidget(),
      extendBody: true,
      resizeToAvoidBottomInset: false,
     
      body: Listener(
        onPointerMove: (asd) {
          if (asd.delta.dy > 2) {
            viewModel.isBottomNavBarVisible = false;
          } else if (asd.delta.dy < -2) {
            viewModel.isBottomNavBarVisible = true;
          }
        },
        child: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: viewModel.pageController,
          children: const [
            HomeScreen(),
            SettingScreen(),
            
           
          ],
        ),
      ),
    );
  }


}
