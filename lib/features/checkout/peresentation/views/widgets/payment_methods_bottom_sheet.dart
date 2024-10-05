import 'package:flutter/material.dart';
import 'package:paymentapp/features/checkout/peresentation/views/widgets/payment_methods_list_view.dart';
import 'custom_button_bloc_consumer.dart';

class PaymentMethodsBottomSheet extends StatelessWidget {
  const PaymentMethodsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
           SizedBox(height: 16.0),
           PaymentMethodsListView(),
           SizedBox(height: 32.0),
          CustomButtonBlocConsumer(),
        ],
      ),
    );
  }
}

