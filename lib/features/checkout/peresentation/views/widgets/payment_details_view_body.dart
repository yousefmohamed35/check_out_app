import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:paymentapp/core/utils/widgets/custom_button.dart';
import 'package:paymentapp/features/checkout/peresentation/views/widgets/custom_credit_card.dart';
import 'package:paymentapp/features/checkout/peresentation/views/widgets/payment_methods_list_view.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(slivers: [
        const SliverToBoxAdapter(
          child: PaymentMethodsListView(),
        ),
        const SliverToBoxAdapter(
          child: CustomCreditCard(),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: CustomButton(onTap: () {}),
              )),
        )
      ]),
    );
  }
}
