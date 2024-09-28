import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paymentapp/core/utils/styles.dart';
import 'package:paymentapp/features/checkout/peresentation/views/widgets/total_price_item.dart';
import 'card_info_widget.dart';
import 'payment_item_info.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        color: const Color(0xffD9D9D9),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 50 + 16, left: 22, right: 22),
        child: Column(
          children: [
            Text(
              'Thank you!',
              style: Styles.textStyle25,
            ),
            Text(
              textAlign: TextAlign.center,
              'Your transaction was successful',
              style: Styles.textStyle20,
            ),
            const SizedBox(height: 42),
            const PaymentItemInfo(
              title: 'Date',
              value: '02/10/2024',
            ),
            const SizedBox(height: 20),
            const PaymentItemInfo(
              title: 'Time',
              value: '10:45 Am',
            ),
            const SizedBox(height: 20),
            const PaymentItemInfo(
              title: 'To',
              value: 'Ganona',
            ),
            const Divider(
              thickness: 2,
              height: 60,
            ),
            const TotlePriceItem(title: 'Total', value: r'$50.89'),
            const SizedBox(height: 30),
            const CardInfoWidget(),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  FontAwesomeIcons.barcode,
                  size: 60,
                ),
                Container(
                  alignment: Alignment.center,
                  width: 113,
                  height: 58,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: const BorderSide(
                        color: Color(0xff34A853),
                        width: 1.5,
                      ),
                    ),
                  ),
                  child: Text(
                    'PAID',
                    style: Styles.textStyle24.copyWith(
                      color: const Color(0xff34A853),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: (MediaQuery.sizeOf(context).height * .2 + 20) / 2 - 29,
            )
          ],
        ),
      ),
    );
  }
}
