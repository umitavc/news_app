import 'package:flutter/material.dart';
import 'package:news_case/core/extensions/context_extension.dart';
import 'package:news_case/features/screens/bottom_navbar/bottom_navbar_viewmodel.dart';
import 'package:provider/provider.dart';

final class MainBottomNavbarWidget extends StatelessWidget {
  const MainBottomNavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      child: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 5,
        padding: context.paddingNormalHorizontal,
        child: const SizedBox(
          height: kBottomNavigationBarHeight,
          child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _BottomBarButton(Icons.home, 0),

            _BottomBarButton(Icons.settings, 1),
            ],
          ),
        ),
      ),
    );
  }
}

final class _BottomBarButton extends StatelessWidget {
  const _BottomBarButton(this.icon, this.index);
  final IconData icon;
  final int index;

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MainViewModel>();
    final selectedIndex = context.select<MainViewModel, int>((value) => value.selectedIndex);

    return IconButton(
      icon: Icon(icon),
      onPressed: () {
        viewModel.selectedIndex = index;
      },
      color: selectedIndex == index ? context.colors.primary : context.colors.primary.withOpacity(0.6),
      isSelected: selectedIndex == index,
    );
  }
}
