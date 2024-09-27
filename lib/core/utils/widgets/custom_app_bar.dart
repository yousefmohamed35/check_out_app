 import 'package:flutter/material.dart';
import 'package:paymentapp/core/utils/styles.dart';

AppBar buildAppBar({required final String title}) {
    return AppBar(
      title: Text(
        title,
        style: Styles.textStyle25,
      ),
      centerTitle: true,
      leading: const Icon(Icons.arrow_back),
    );
  }

