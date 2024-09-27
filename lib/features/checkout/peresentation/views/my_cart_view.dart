import 'package:flutter/material.dart';
import 'package:paymentapp/core/utils/styles.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Cart',
          style: Styles.textStyle25,
        ),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
      ),
    );
  }
}
