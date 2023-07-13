import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:vba_crypto_signal/core/utils/colors.dart';
import 'package:vba_crypto_signal/core/utils/text.dart';
import 'package:vba_crypto_signal/views/home_view/component/account_card.dart';
import 'package:vba_crypto_signal/views/home_view/component/coin_card.dart';
import 'package:vba_crypto_signal/views/home_view/component/home_card.dart';
import 'package:vba_crypto_signal/views/home_view/component/tabs.dart';
import 'package:vba_crypto_signal/widgets/assets.dart';
import 'package:vba_crypto_signal/widgets/gap.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<String> tabsList = ["Signal Groups", "Bots"];
  List<String> coinImageList = [
    SvgAssets.bitcoin,
    SvgAssets.eth,
    SvgAssets.bnb,
    SvgAssets.bitcoin,
  ];
  List<String> coinNameList = [
    "BTCUSDT",
    "ETHUSDT",
    "BNBUSDT",
    "BTCUSDT",
  ];
  List<String> coinPercentageList = [
    "36.77 %",
    "24.77 %",
    "36.07 %",
    "36.77 %",
  ];
  List<Color> colorList = [
    Colors.white,
    const Color(0xffB1BCFF),
    const Color(0xffF3BA2F),
    Colors.white,
  ];

  int prevSelectedIndex = 0;
  var selectedIndex = 0;
  ScrollController horizontalController = ScrollController();

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
                        child: Container(
                          color: GenericColors.scaffoldBackgroundColor,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(PngAssets.man),
                                  Gap.s10,
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                              Gap.s10
                            ],
                          ),
                        ),
                      ),
                      const SliverToBoxAdapter(child: AmountCard()),
                      SliverToBoxAdapter(
                        child: RawScrollbar(
                          controller: horizontalController,
                          trackColor: GenericColors.scaffoldSecondary,
                          thumbColor: Colors.white,
                          thickness: 2,
                          thumbVisibility: true,
                          trackVisibility: true,
                          child: SingleChildScrollView(
                            controller: horizontalController,
                            scrollDirection: Axis.horizontal,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                bottom: 14,
                              ),
                              child: Row(
                                children: [
                                  ...List.generate(
                                      coinImageList.length,
                                      (index) => CoinCard(
                                            picture: coinImageList[index],
                                            name: coinNameList[index],
                                            percentage:
                                                coinPercentageList[index],
                                            color: colorList[index],
                                          ))
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SliverToBoxAdapter(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Gap.s20,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ...List.generate(
                                    tabsList.length,
                                    (index) => GestureDetector(
                                          onTap: () {
                                            prevSelectedIndex = selectedIndex;
                                            selectedIndex = index;
                                            setState(() {});
                                          },
                                          child: Tabs(
                                              color: index == selectedIndex
                                                  ? GenericColors
                                                      .scaffoldSecondary
                                                  : GenericColors
                                                      .scaffoldBackgroundColor,
                                              text: tabsList[index]),
                                        )),
                              ],
                            ),
                            Gap.s14,
                            const HomeCard(status: "Active", colour: true),
                            const HomeCard(status: "Inactive", colour: false),
                            const HomeCard(status: "Active", colour: true),
                            Gap.s36,
                            Gap.s36
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
