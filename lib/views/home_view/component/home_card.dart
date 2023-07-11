import 'package:flutter/material.dart';
import 'package:vba_crypto_signal/core/utils/colors.dart';
import 'package:vba_crypto_signal/core/utils/text.dart';
import 'package:vba_crypto_signal/widgets/gap.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key, required this.status, required this.colour});
  final String status;
  final bool colour;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          decoration: BoxDecoration(
              color: GenericColors.scaffoldSecondary,
              borderRadius: BorderRadius.circular(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GenericText.montheading2(
                    "EMA Cross 50  200 + ADX",
                  ),
                  GenericText.montheading2(
                    "(Long)",
                  ),
                  Gap.s10,
                  GenericText.montheading3(
                    "Distribution Bot",
                    color: GenericColors.grey,
                  )
                ],
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: colour
                        ? GenericColors.active.withOpacity(0.1)
                        : GenericColors.grey.withOpacity(0.1)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
                  child: Row(
                    children: [
                      Container(
                        width: 6,
                        height: 6,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: colour
                              ? GenericColors.active
                              : GenericColors.grey,
                        ),
                      ),
                      Gap.s8,
                      GenericText.montheading3(
                        status,
                        color:
                            colour ? GenericColors.active : GenericColors.grey,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Gap.s16
      ],
    );
  }
}
