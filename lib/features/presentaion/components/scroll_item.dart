import 'package:flutter/material.dart';
import 'package:product_navigator/features/presentaion/style/color.dart';

class ScrollItem extends StatelessWidget {
  final bool isActive;
  final IconData icon;
  final String text;
  const ScrollItem({
    super.key,
    this.isActive = false,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 50,
          height: 50,
          margin: const EdgeInsets.only(right: 20, left: 10),
          decoration: BoxDecoration(
            color: isActive ? CustomColor.mainColor : CustomColor.itemColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(
            icon,
            color: isActive ? Colors.white : CustomColor.itemTextColor,
            size: 30,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          text,
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w400,
            color: isActive ? CustomColor.mainColor : CustomColor.itemTextColor,
          ),
        ),
      ],
    );
  }
}
