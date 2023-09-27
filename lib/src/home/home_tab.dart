import 'package:flutter/material.dart';
import 'package:palmeirasapp/src/config/custom_colors.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //App bar
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text.rich(TextSpan(
          style: TextStyle(fontSize: 30),
          children: [
            TextSpan(
                text: "Palmeira",
                style: TextStyle(color: customColors.customSwatchColor)),
            TextSpan(
                text: "store",
                style: TextStyle(color: customColors.customConstrastColor))
          ],
        )),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart,
              color: customColors.customSwatchColor,
            ),
          )
        ],
      ),

      //Campo de pesquisa

      //Categorias

      //Grid
    );
  }
}
