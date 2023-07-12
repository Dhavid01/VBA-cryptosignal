import 'package:flutter/material.dart';
import 'package:vba_crypto_signal/core/utils/text.dart';

class Tabs extends StatelessWidget {
  const Tabs({super.key, required this.color, required this.text});

  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(25), color: color),
      child: Center(child: GenericText.montheading2(text)),
    );
  }
}
