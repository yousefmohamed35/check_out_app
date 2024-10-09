import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';
import 'package:paymentapp/core/utils/widgets/custom_button.dart';
import 'package:paymentapp/features/checkout/data/models/amount_model/amount_model.dart';
import 'package:paymentapp/features/checkout/data/models/item_list_model/item.dart';
import 'package:paymentapp/features/checkout/data/models/item_list_model/item_list_model.dart';
import 'package:paymentapp/features/checkout/data/models/payment_intent_input_model.dart';

import 'package:paymentapp/features/checkout/peresentation/manger/payment_cubit.dart';
import 'package:paymentapp/features/checkout/peresentation/views/thank_you_view.dart';

import '../../../data/models/amount_model/details.dart';

class CustomButtonBlocConsumer extends StatelessWidget {
  const CustomButtonBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentState>(
      listener: (context, state) {
        if (state is PaymentSuccess) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) {
              return const ThankYouView();
            }),
          );
        }
        if (state is PaymentFailure) {
          Navigator.pop(context);
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errorMessage),
            ),
          );
        }
      },
      builder: (context, state) {
        return CustomButton(
          isLoading: state is PaymentLoading,
          onTap: () {
            // PaymentIntentInputModel paymentIntentInputModel =
            //     PaymentIntentInputModel(
            //   amount: '100',
            //   currency: 'usd',
            //   customerId: 'cus_QzGm53cVwi110T',
            // );
            // BlocProvider.of<PaymentCubit>(context)
            //     .makePayment(paymentIntentInputModel: paymentIntentInputModel);
            List<OrderItemModel> orders = [
              OrderItemModel(
                name: "Apple",
                quantity: 4,
                price: "10",
                currency: "USD",
              ),
              OrderItemModel(
                name: "Pineapple",
                quantity: 5,
                price: "12",
                currency: "USD",
              ),
            ];

            var itemList = ItemListModel(
              orders: orders,
            );
            var amount = AmountModel(
              total: "100",
              currency: "USD",
              details: Details(
                subtotal: "100",
                shipping: "0",
                shippingDiscount: 0,
              ),
            );
            Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => PaypalCheckoutView(
                sandboxMode: true,
                clientId: "YOUR CLIENT ID",
                secretKey: "YOUR SECRET KEY",
                transactions: [
                  {
                    "amount": amount.toJson(),
                    "description": "The payment transaction description.",
                    // "payment_options": {
                    //   "allowed_payment_method":
                    //       "INSTANT_FUNDING_SOURCE"
                    // },
                    "item_list": itemList.toJson(),
                  }
                ],
                note: "Contact us for any questions on your order.",
                onSuccess: (Map params) async {
                  log("onSuccess: $params");
                  Navigator.pop(context);
                },
                onError: (error) {
                  log("onError: $error");
                  Navigator.pop(context);
                },
                onCancel: () {
                  print('cancelled:');
                  Navigator.pop(context);
                },
              ),
            ));
          },
          text: 'continue',
        );
      },
    );
  }
}
