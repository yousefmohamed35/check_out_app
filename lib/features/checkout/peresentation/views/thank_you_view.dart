import 'package:flutter/material.dart';
import 'package:paymentapp/core/utils/widgets/custom_app_bar.dart';
import 'package:paymentapp/features/checkout/peresentation/views/widgets/thank_you_view_body.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Transform.translate(
          offset: const Offset(0, -16), child: const ThankYouViewBody()),
    );
  }
}
