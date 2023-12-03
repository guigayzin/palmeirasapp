import 'package:flutter/material.dart';
import 'package:palmeirasapp/src/config/custom_colors.dart';
import 'package:palmeirasapp/src/models/item_model.dart';
import 'package:palmeirasapp/src/pages/players/player_screen.dart';
import 'package:palmeirasapp/src/services/utils_services.dart';

class ItemTile extends StatelessWidget {
  ItemTile({
    Key? key,
    required this.item,
  }) : super(key: key);

  final ItemModel item;
  final utilsServices = UtilsServices();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //cartão de jogador
        GestureDetector(
          onTap: () {
            Navigator.of(context)
                .pushReplacement(MaterialPageRoute(builder: (c) {
              return PlayerScreen(item: item);
            }));
          },
          child: Card(
            elevation: 1,
            shadowColor: customColors.customConstrastColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  //imagem
                  Expanded(
                    child: Image.asset(item.imgUrl),
                  ),
                  //nome
                  Text(
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    item.itemName,
                  ),

                  //preço
                  Text(
                    utilsServices.priceToCurrecy(item.price),
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: customColors.customConstrastColor,
                    ),
                  ),

                  //posição
                  Text(
                    "${item.position}",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: customColors.customSwatchColor.shade700),
                  ),
                ],
              ),
            ),
          ),
        ),

        //botão add carrinho
        Positioned(
          top: 4,
          right: 4,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              height: 40,
              width: 35,
              decoration: BoxDecoration(
                color: customColors.customSwatchColor.shade500,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  topRight: Radius.circular(20),
                ),
              ),
              child: const Icon(
                Icons.add_shopping_cart_rounded,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
        )
      ],
    );
  }
}
