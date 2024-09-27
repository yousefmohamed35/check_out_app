import 'package:flutter/material.dart';
import 'package:paymentapp/features/checkout/peresentation/views/my_cart_view.dart';

void main() {
  runApp(const CheckOutApp());
}
class CheckOutApp extends StatelessWidget {
  const CheckOutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCartView(),
    );
  }
}