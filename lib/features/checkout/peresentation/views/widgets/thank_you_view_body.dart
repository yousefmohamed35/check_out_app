import 'package:flutter/material.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: ShapeDecoration(
              color: const Color(0xffD9D9D9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
          Positioned(
            left: 28,
            right: 28,
            bottom: MediaQuery.sizeOf(context).height * .2 + 20,
            child: Row(
              children: List.generate(
                  30,
                  (index) => Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2),
                          child: Container(
                            color: Color(0xffB8B8B8),
                            height: 2,
                          ),
                        ),
                      )),
            ),
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
            child: const CircleAvatar(
              radius: 50,
              backgroundColor: const Color(0xffD9D9D9),
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Color(0xff34A853),
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 50,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
