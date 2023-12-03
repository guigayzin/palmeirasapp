import 'package:flutter/material.dart';
import 'package:palmeirasapp/src/config/custom_colors.dart';
import 'package:palmeirasapp/src/models/item_model.dart';
import 'package:palmeirasapp/src/services/utils_services.dart';

class PlayerScreen extends StatelessWidget {
  PlayerScreen({
    Key? key,
    required this.item,
  }) : super(key: key);

  final UtilsServices utilsServices = UtilsServices();
  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customColors.customConstrastColor,
      body: Column(
        children: [
          Expanded(
            child: Image.asset(item.imgUrl),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(32),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(50),
                ),
                boxShadow: [
                  BoxShadow(
                    color: customColors.customSwatchColor.shade700,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      //Nome do jogador
                      Expanded(
                        child: Text(
                          item.itemName,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      //botão qntd
                      Container(
                        height: 30,
                        width: 50,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  //preço jogador
                  Row(
                    children: [
                      Text(
                        utilsServices.priceToCurrecy(item.price),
                        style: TextStyle(
                          fontSize: 23,
                          color: customColors.customConstrastColor,
                        ),
                      ),
                    ],
                  ),

                  //descrição jogador
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 30,
                      ),
                      child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: Text(
                          item.description,
                          style: const TextStyle(height: 1.5),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
