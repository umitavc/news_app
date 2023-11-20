import 'package:flutter/material.dart';


final class MainViewModel extends ChangeNotifier  {


  ///
  /// Bottom Navigation Bar Controls
  ///
  final PageController _pageController = PageController();
  int _selectedIndex = 0;
  bool _isBottomNavBarVisible = true;

  int get selectedIndex => _selectedIndex;
  bool get isBottomNavBarVisible => _isBottomNavBarVisible;
  PageController get pageController => _pageController;

  set isBottomNavBarVisible(bool value) {
    _isBottomNavBarVisible = value;
    notifyListeners();
  }

  set selectedIndex(int value) {
    _selectedIndex = value;
    _pageController.animateToPage(value, duration: const Duration(milliseconds: 300), curve: Curves.fastOutSlowIn);
    if (value == 0 && _isBottomNavBarVisible == false) {
      _isBottomNavBarVisible = true;
    }

    notifyListeners();
  }
}
