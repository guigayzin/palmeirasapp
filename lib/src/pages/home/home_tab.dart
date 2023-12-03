import 'package:flutter/material.dart';
import 'package:palmeirasapp/src/config/custom_colors.dart';
import 'package:badges/badges.dart' as badges;
import 'package:palmeirasapp/src/pages/home/components/category_tile.dart';
import 'package:palmeirasapp/src/config/app_data.dart' as appData;

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  String selectedCategory = 'Goleiros';

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
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 15),
            child: GestureDetector(
              onTap: () {},
              child: badges.Badge(
                badgeStyle: badges.BadgeStyle(
                  badgeColor: customColors.customConstrastColor,
                ),
                badgeContent: const Text('2',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    )),
                child: Icon(
                  Icons.shopping_cart,
                  color: customColors.customSwatchColor,
                ),
              ),
            ),
          )
        ],
      ),

      body: Column(
        children: [
          //Campo de pesquisa
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: TextFormField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  isDense: true,
                  hintText: 'Nome da fera ...',
                  hintStyle:
                      TextStyle(color: Colors.grey.shade400, fontSize: 14),
                  prefixIcon: Icon(
                    Icons.search_sharp,
                    color: customColors.customConstrastColor,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: const BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ))),
            ),
          ),
          //Categorias
          Container(
            padding: const EdgeInsets.only(
              left: 25,
              right: 25,
            ),
            height: 40,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  return CategoryTile(
                    onPressed: () {
                      setState(() {
                        selectedCategory = appData.categories[index];
                      });
                    },
                    category: appData.categories[index],
                    isSelected: appData.categories[index] == selectedCategory,
                  );
                },
                separatorBuilder: (_, index) => const SizedBox(width: 10),
                itemCount: appData.categories.length),
          ),
        ],
      ),

      //Grid
    );
  }
}
