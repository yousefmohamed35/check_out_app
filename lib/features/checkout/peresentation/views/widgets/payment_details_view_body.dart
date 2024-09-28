import 'package:flutter/material.dart';
import 'package:paymentapp/features/checkout/peresentation/views/widgets/custom_credit_card.dart';
import 'package:paymentapp/features/checkout/peresentation/views/widgets/payment_methods_list_view.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            PaymentMethodsListView(),
            CustomCreditCard(),
          ],
        ),
      ),
    );
  }
}

