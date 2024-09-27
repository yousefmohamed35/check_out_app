import 'package:flutter/material.dart';
import 'package:paymentapp/features/checkout/peresentation/views/widgets/payment_method_item.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PaymentMethodItem(),
      ],
    );
  }
}

