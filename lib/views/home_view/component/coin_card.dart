import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vba_crypto_signal/core/utils/colors.dart';
import 'package:vba_crypto_signal/core/utils/text.dart';
import 'package:vba_crypto_signal/widgets/gap.dart';

class CoinCard extends StatefulWidget {
  const CoinCard(
      {super.key,
      required this.name,
      required this.percentage,
      required this.picture,
      this.color});
  final String name;
  final Color? color;
  final String percentage;
  final String picture;

  @override
  State<CoinCard> createState() => _CoinCardState();
}

class _CoinCardState extends State<CoinCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: GenericColors.scaffoldSecondary),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  padding: const EdgeInsets.all(11),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: widget.color!.withOpacity(0.1)),
                  child: SvgPicture.asset(widget.picture)),
              Gap.s20,
              GenericText.montheading4(widget.name),
              Gap.s4,
              GenericText.percentage(widget.percentage)
            ],
          ),
        ),
      ),
    );
  }
}
