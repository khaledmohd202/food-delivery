import 'package:flutter/material.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({
    super.key,
    required this.type,
    required this.typeVal
  });
  final String type;
  final String typeVal;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Text(
          type,
          style:const TextStyle(
            fontSize: 16,
            color: Colors.black45,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          typeVal,
          style:const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
