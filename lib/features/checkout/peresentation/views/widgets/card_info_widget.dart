import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardInfoWidget extends StatelessWidget {
  const CardInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 305,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: ListTile(
        leading: SvgPicture.asset('assets/image/mastercard.svg'),
        title: const Text('CreditCard'),
        subtitle: const Text('MasterCard **78'),
      ),
    );
  }
}
