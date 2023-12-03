import 'package:flutter/material.dart';
import 'package:palmeirasapp/src/config/custom_colors.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile({
    Key? key,
    required this.category,
    required this.isSelected,
    required this.onPressed,
  }) : super(key: key);

  final String category;
  final bool isSelected;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Align(
        alignment: Alignment.center,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          decoration: BoxDecoration(
            color: isSelected
                ? customColors.customConstrastColor
                : Colors.transparent,
            borderRadius: BorderRadiusDirectional.circular(10),
          ),
          child: Text(
            category,
            style: TextStyle(
              color: isSelected
                  ? Colors.white
                  : customColors.customSwatchColor.shade500,
              fontWeight: FontWeight.bold,
              fontSize: isSelected ? 16 : 14,
            ),
          ),
        ),
      ),
    );
  }
}
