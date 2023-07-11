import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:vba_crypto_signal/core/utils/colors.dart';
import 'package:vba_crypto_signal/core/utils/text.dart';
import 'package:vba_crypto_signal/views/home_view/component/home_card.dart';
import 'package:vba_crypto_signal/widgets/assets.dart';
import 'package:vba_crypto_signal/widgets/gap.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GenericColors.scaffoldBackgroundColor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: CustomScrollView(
              slivers: [
                SliverPinnedHeader(
                  child: Row(
                    children: [
                      Image.asset(PngAssets.man),
                      Gap.s10,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GenericText.montheading1("Hey, Jacobs"),
                          GenericText.montheading3(
                            "Welcome back",
                            color: GenericColors.grey,
                          ),
                        ],
                      ),
                      const Spacer(),
                      SvgPicture.asset(SvgAssets.bell)
                    ],
                  ),
                ),
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      Gap.s14,
                      const HomeCard(
                        status: "Active",
                        colour: true,
                      ),
                      const HomeCard(
                        status: "Inactive",
                        colour: false,
                      ),
                      const HomeCard(
                        status: "Active",
                        colour: true,
                      ),
                    ],
                  ),
                )
              ],
            ))
          ],
        ),
      )),
    );
  }
}
