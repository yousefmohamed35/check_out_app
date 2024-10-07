import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:paymentapp/core/utils/api_keys.dart';
import 'package:paymentapp/features/checkout/peresentation/views/my_cart_view.dart';

void main() {
  Stripe.publishableKey = ApiKeys.publishableKey;
  runApp(
    // DevicePreview(
    //   enabled: !kReleaseMode,
    //   builder: (context) => const CheckOutApp(), // Wrap your app
    // ),
    const CheckOutApp()
  );
}

class CheckOutApp extends StatelessWidget {
  const CheckOutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // useInheritedMediaQuery: true,
      // locale: DevicePreview.locale(context),
      // builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: const MyCartView(),
    );
  }
}
