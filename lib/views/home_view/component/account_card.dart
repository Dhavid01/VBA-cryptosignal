import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vba_crypto_signal/core/utils/text.dart';
import 'package:vba_crypto_signal/widgets/assets.dart';
import 'package:vba_crypto_signal/widgets/gap.dart';

class AmountCard extends StatelessWidget {
  const AmountCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gap.s16,
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                  image: AssetImage(
                    PngAssets.background,
                  ),
                  fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GenericText.montheading4("Wallet"),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.white)),
                    padding: const EdgeInsets.only(
                        top: 13, left: 14, right: 10, bottom: 12),
                    child: Row(
                      children: [
                        SvgPicture.asset(SvgAssets.whiteBinance),
                        Gap.s6,
                        GenericText.montheading4("Binance"),
                        SvgPicture.asset(SvgAssets.arrowDown)
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 45,
              ),
              GenericText.montheading4("Account Balance"),
              Gap.s10,
              GenericText.amount("\$ 12 480.00")
            ]),
          ),
        ),
        Gap.s10,
      ],
    );
  }
}
