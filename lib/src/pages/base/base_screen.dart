import 'package:flutter/material.dart';
import 'package:palmeirasapp/src/config/custom_colors.dart';
import 'package:palmeirasapp/src/pages/home/home_tab.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int currentIndex = 0;
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: [
          const HomeTab(),
          Container(color: customColors.customSwatchColor.shade100),
          Container(color: customColors.customSwatchColor.shade500),
          Container(color: customColors.customSwatchColor.shade300),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
              pageController.jumpToPage(index);
            });
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: customColors.customSwatchColor.shade600,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withAlpha(100),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.sports_soccer),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: 'Carrinho',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list_rounded),
              label: 'Pedidos',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Perfil',
            ),
          ]),
    );
  }
}
