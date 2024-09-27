import 'package:flutter/material.dart';
import 'package:paymentapp/core/utils/styles.dart';
import 'package:paymentapp/features/checkout/peresentation/views/widgets/my_cart_view_body.dart';

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
        leading: const Icon(Icons.arrow_back),
      ),
      body: const MyCartViewBody(),
    );
  }
}
