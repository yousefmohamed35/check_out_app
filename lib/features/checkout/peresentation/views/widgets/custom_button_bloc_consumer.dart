import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paymentapp/core/utils/widgets/custom_button.dart';
import 'package:paymentapp/features/checkout/data/models/payment_intent_input_model.dart';
import 'package:paymentapp/features/checkout/peresentation/manger/payment_cubit.dart';
import 'package:paymentapp/features/checkout/peresentation/views/thank_you_view.dart';

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
            PaymentIntentInputModel paymentIntentInputModel =
                PaymentIntentInputModel(
              amount: '100',
              currency: 'usd',
            );
            BlocProvider.of<PaymentCubit>(context)
                .makePayment(paymentIntentInputModel: paymentIntentInputModel);
          },
          text: 'continue',
        );
      },
    );
  }
}
