import 'package:flutter/material.dart';
import 'package:paymentapp/core/utils/widgets/custom_app_bar.dart';
import 'package:paymentapp/features/checkout/peresentation/views/widgets/payment_details_view_body.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'Payment Details'),
      body: const PaymentDetailsViewBody(),
    );
  }
}
