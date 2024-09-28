import 'package:flutter/material.dart';
import 'package:paymentapp/core/utils/styles.dart';

AppBar buildAppBar({final String? title}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0.0,
    title: Text(
      title ?? '',
      style: Styles.textStyle25,
    ),
    centerTitle: true,
    leading: const Icon(Icons.arrow_back),
  );
}
