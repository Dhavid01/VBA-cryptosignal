import 'package:flutter/material.dart';
import 'package:vba_crypto_signal/core/utils/colors.dart';
import 'package:vba_crypto_signal/views/activity/activity.dart';
import 'package:vba_crypto_signal/views/home_view/home_view.dart';
import 'package:vba_crypto_signal/views/navBar.dart';
import 'package:vba_crypto_signal/views/settings/settings.dart';
import 'package:vba_crypto_signal/widgets/assets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int pageIndex = 0;
  final pages = [
    const HomeView(),
    const Activity(),
    const Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GenericColors.scaffoldBackgroundColor,
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 62),
      height: 80,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              GenericColors.scaffoldSecondary,
              GenericColors.scaffoldBackgroundColor
            ]),
        color: GenericColors.scaffoldBackgroundColor,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavBar(
              svg: SvgAssets.home,
              onTap: () {
                setState(() {
                  pageIndex = 0;
                });
              }),
          NavBar(
              svg: SvgAssets.activity,
              onTap: () {
                setState(() {
                  pageIndex = 1;
                });
              }),
          NavBar(
              svg: SvgAssets.setting,
              onTap: () {
                setState(() {
                  pageIndex = 2;
                });
              }),
        ],
      ),
    );
  }
}
