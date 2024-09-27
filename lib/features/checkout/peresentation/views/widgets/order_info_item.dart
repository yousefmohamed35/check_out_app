import 'package:flutter/material.dart';
import 'package:paymentapp/core/utils/styles.dart';

class OrderInfoItem extends StatelessWidget {
  const OrderInfoItem({super.key, required this.title, required this.value});
  final String title, value;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Styles.textStyle18,
        ),
        Text(
          value,
          style: Styles.textStyle18,
        ),
      ],
    );
  }
}
