import 'package:flutter/material.dart';
import 'package:paymentapp/core/utils/widgets/custom_button.dart';
import 'package:paymentapp/features/checkout/peresentation/views/payment_details_view.dart';
import 'package:paymentapp/features/checkout/peresentation/views/widgets/order_info_item.dart';
import 'package:paymentapp/features/checkout/peresentation/views/widgets/total_price_item.dart';

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
          Expanded(child: Image.asset('assets/image/group.png')),
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
          const Divider(
            thickness: 2,
            color: Color(0xffC7C7C7),
            height: 34,
          ),
          const TotlePriceItem(
            title: 'Total',
            value: '\$50.96',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomButton(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const PaymentDetailsView();
                  },
                ),
              );
            },
            text: 'Complete payment',
          ),
          const SizedBox(
            height: 12,
          ),
        ],
      ),
    );
  }
}
