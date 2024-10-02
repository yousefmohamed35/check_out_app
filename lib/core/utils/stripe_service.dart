import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:paymentapp/core/utils/api_keys.dart';
import 'package:paymentapp/core/utils/api_service.dart';
import 'package:paymentapp/features/checkout/data/models/payment_intent_input_model.dart';
import 'package:paymentapp/features/checkout/data/models/payment_intent_model/payment_intent_model.dart';

class StripeService {
  final ApiService apiService = ApiService();
  Future<PaymentIntentModel> createPaymentIntent(
      PaymentIntentInputModel paymentIntentInputModel) async {
    var response = await apiService.post(
        body: paymentIntentInputModel.toJson(),
        url: 'https://api.stripe.com/v1/payment_intents',
        token: ApiKeys.secretKey);
    return PaymentIntentModel.fromJson(response.data);
  }

  Future initPaymentSheet({required String paymentIntentClientSecret}) async {
    Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        paymentIntentClientSecret: paymentIntentClientSecret,
        merchantDisplayName: 'Yousef',
      ),
    );
  }

  Future displayPaymentSheet() async {
    Stripe.instance.presentPaymentSheet();
  }
}
