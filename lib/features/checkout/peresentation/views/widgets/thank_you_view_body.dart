import 'package:flutter/material.dart';

import 'custom_check_icon.dart';
import 'custom_dashed_line.dart';
import 'thank_you_card.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
         const ThankYouCard(),
          Positioned(
            left: 28,
            right: 28,
            bottom: MediaQuery.sizeOf(context).height * .2 + 20,
            child:const CustomDashedLine(),
          ),
          Positioned(
            left: -20,
            bottom: MediaQuery.sizeOf(context).height * .2,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
          Positioned(
            right: -20,
            bottom: MediaQuery.sizeOf(context).height * .2,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: -50,
            child: CustomCheckIcon(),
          )
        ],
      ),
    );
  }
}

