import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:vba_crypto_signal/core/utils/colors.dart';
import 'package:vba_crypto_signal/views/activity/activity.dart';
import 'package:vba_crypto_signal/views/home_view/home_view.dart';
import 'package:vba_crypto_signal/views/settings/settings.dart';
import 'package:vba_crypto_signal/widgets/assets.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const BottomNavIcon(
          icon: SvgAssets.home,
          size: Size(50, 50),
        ),
        inactiveIcon: SvgPicture.asset(
          SvgAssets.home,
          height: 60,
          width: 60,
          // ignore: deprecated_member_use
          color: GenericColors.grey,
        ),
      ),
      PersistentBottomNavBarItem(
        icon: const BottomNavIcon(
          icon: SvgAssets.activity,
          size: Size(24, 24),
        ),
        inactiveIcon: SvgPicture.asset(
          SvgAssets.activity,
          height: 24,
          width: 24,
        ),
        activeColorPrimary: const Color(0x7FEAB96B),
        inactiveColorPrimary: GenericColors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const BottomNavIcon(
          icon: SvgAssets.setting,
          size: Size(24, 24),
        ),
        inactiveIcon: SvgPicture.asset(
          SvgAssets.setting,
          height: 24,
          width: 24,
        ),
        activeColorPrimary: const Color(0x7FEAB96B),
        inactiveColorPrimary: GenericColors.grey,
      ),
    ];
  }

  List<Widget> _buildScreens() {
    return [
      const HomeView(),
      const Activity(),
      const Settings(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      navBarHeight: 85,
      bottomScreenMargin: 0,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: const Color(0xff344555),
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      decoration: const NavBarDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25), topRight: Radius.circular(25)),
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style6,
    );
  }
}

class BottomNavIcon extends StatelessWidget {
  const BottomNavIcon({super.key, required this.icon, required this.size});
  final String icon;
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color(0x7FEAB96B),
              blurRadius: 50,
              offset: Offset(0, 0),
              spreadRadius: 0,
            )
          ],
        ),
        child: SvgPicture.asset(
          icon,
          // ignore: deprecated_member_use
          color: GenericColors.gold,
          height: size.height,
          width: size.width,
        ));
  }
}
