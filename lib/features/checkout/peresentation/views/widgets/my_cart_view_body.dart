import 'package:flutter/material.dart';

import 'package:paymentapp/features/checkout/peresentation/views/widgets/order_info_item.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 18,
          ),
          Image.asset('assets/image/group.png'),
          const SizedBox(
            height: 25,
          ),
          const OrderInfoItem(
            title: 'Order SubTota',
            value: '\$42.97',
          ),
          const SizedBox(
            height: 3,
          ),
          const OrderInfoItem(
            title: 'Shipping',
            value: '\$7.99',
          ),
          const SizedBox(
            height: 3,
          ),
          const OrderInfoItem(
            title: 'Total',
            value: '\$50.96',
          ),
        ],
      ),
    );
  }
}

