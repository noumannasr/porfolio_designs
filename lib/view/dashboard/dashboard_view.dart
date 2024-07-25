import 'dart:async';

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:bright_up_image/constant.dart';
import 'package:bright_up_image/view/dashboard/home_two.dart';
import 'package:bright_up_image/view/homes/home_four.dart';
import 'package:bright_up_image/view/homes/home_three.dart';
import 'package:bright_up_image/view/homes/step_home.dart';
import 'package:bright_up_image/themesCustom/custom_color_theme.dart';
import 'package:bright_up_image/themesCustom/custom_theme.dart';
import 'package:circular_reveal_animation/circular_reveal_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyHomePageD extends StatefulWidget {
  MyHomePageD({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageDState createState() => _MyHomePageDState();
}

class _MyHomePageDState extends State<MyHomePageD>
    with TickerProviderStateMixin {
  final autoSizeGroup = AutoSizeGroup();
  var _bottomNavIndex = 0; //default index of a first screen

  late AnimationController _fabAnimationController;
  late AnimationController _borderRadiusAnimationController;
  late Animation<double> fabAnimation;
  late Animation<double> borderRadiusAnimation;
  late CurvedAnimation fabCurve;
  late CurvedAnimation borderRadiusCurve;
  late AnimationController _hideBottomBarAnimationController;

  final iconList = <IconData>[
    Icons.home,
    Icons.menu,
    Icons.settings,
    Icons.logout,
  ];

  final iconLableList = <String>["Home", "Menu", "Settings", "Logout"];

  @override
  void initState() {
    super.initState();

    _fabAnimationController = AnimationController(
      duration: Duration(milliseconds: 500),
      vsync: this,
    );
    _borderRadiusAnimationController = AnimationController(
      duration: Duration(milliseconds: 500),
      vsync: this,
    );
    fabCurve = CurvedAnimation(
      parent: _fabAnimationController,
      curve: Interval(0.5, 1.0, curve: Curves.fastOutSlowIn),
    );
    borderRadiusCurve = CurvedAnimation(
      parent: _borderRadiusAnimationController,
      curve: Interval(0.5, 1.0, curve: Curves.fastOutSlowIn),
    );

    fabAnimation = Tween<double>(begin: 0, end: 1).animate(fabCurve);
    borderRadiusAnimation = Tween<double>(begin: 0, end: 1).animate(
      borderRadiusCurve,
    );

    _hideBottomBarAnimationController = AnimationController(
      duration: Duration(milliseconds: 200),
      vsync: this,
    );

    Future.delayed(
      Duration(seconds: 1),
      () => _fabAnimationController.forward(),
    );
    Future.delayed(
      Duration(seconds: 1),
      () => _borderRadiusAnimationController.forward(),
    );
  }

  bool onScrollNotification(ScrollNotification notification) {
    if (notification is UserScrollNotification &&
        notification.metrics.axis == Axis.vertical) {
      switch (notification.direction) {
        case ScrollDirection.forward:
          _hideBottomBarAnimationController.reverse();
          _fabAnimationController.forward(from: 0);
          break;
        case ScrollDirection.reverse:
          _hideBottomBarAnimationController.forward();
          _fabAnimationController.reverse(from: 1);
          break;
        case ScrollDirection.idle:
          break;
      }
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<CustomColorsTheme>();
    return Scaffold(
      extendBody: true,
      // appBar: AppBar(
      //   title: Text(
      //     widget.title,
      //     style: TextStyle(color: Colors.white),
      //   ),
      // ),
      body: NotificationListener<ScrollNotification>(
        onNotification: onScrollNotification,
        child: _bottomNavIndex == 0
            ? MyHomePageTwo()
            : _bottomNavIndex == 1
                ? MyHomePage()
                : _bottomNavIndex == 2
                    ? HomeThree()
                    : _bottomNavIndex == 3
                        ? HomeFour()
                        : NavigationScreen(iconList[_bottomNavIndex]),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: _bottomNavIndex == 2 || _bottomNavIndex == 3
            ? Color(0xFFffc4e8)
            : _bottomNavIndex == 1
                ? AppColors.pinkP
                : Color(0xFF9194fd),
        shape: const CircleBorder(),
        child: Icon(
          Icons.qr_code,
          color: Colors.white,
        ),
        onPressed: () {
          _fabAnimationController.reset();
          _borderRadiusAnimationController.reset();
          _borderRadiusAnimationController.forward();
          _fabAnimationController.forward();
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        itemCount: iconList.length,
        tabBuilder: (int index, bool isActive) {
          final color = isActive
              ? _bottomNavIndex == 2 || _bottomNavIndex == 3
                  ? AppColors.darkPurple
                  : _bottomNavIndex == 1
                      ? AppColors.pinkP
                      : Color(0xff8689fc)
              : _bottomNavIndex == 2 || _bottomNavIndex == 3
                  ? AppColors.bg
                  : Colors.grey;
          return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                iconList[index],
                size: 22,
                color: color,
              ),
              const SizedBox(height: 4),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: AutoSizeText(
                  iconLableList[index],
                  maxLines: 1,
                  style: TextStyle(color: color),
                  group: autoSizeGroup,
                ),
              )
            ],
          );
        },
        backgroundColor:  Colors.white, //Color(0xFF9ddbd5),
        activeIndex: _bottomNavIndex,
        splashColor: _bottomNavIndex == 0 || _bottomNavIndex == 1
            ? AppColors.lightPink
            : Colors.white10,
        notchAndCornersAnimation: borderRadiusAnimation,
        splashSpeedInMilliseconds: 300,
        notchSmoothness: NotchSmoothness.defaultEdge,
        gapLocation: GapLocation.center,
        leftCornerRadius:
            _bottomNavIndex == 2 || _bottomNavIndex == 3 ? 10 : 42,
        rightCornerRadius:
            _bottomNavIndex == 2 || _bottomNavIndex == 3 ? 10 : 42,
        onTap: (index) => setState(() => _bottomNavIndex = index),
        // hideAnimationController: _hideBottomBarAnimationController,
        shadow: BoxShadow(
          offset: Offset(0, 1),
          blurRadius: 0,
          spreadRadius: 0.5,
          color: Color(0xFF2A3680),
        ),
      ),
    );
  }
}

class NavigationScreen extends StatefulWidget {
  final IconData iconData;

  NavigationScreen(this.iconData) : super();

  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> animation;

  @override
  void didUpdateWidget(NavigationScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.iconData != widget.iconData) {
      _startAnimation();
    }
  }

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
    );
    animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    );
    _controller.forward();
    super.initState();
  }

  _startAnimation() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
    );
    animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<CustomColorsTheme>()!;
    return Container(
      color: Theme.of(context).colorScheme.background,
      child: ListView(
        children: [
          SizedBox(height: 64),
          Center(
            child: CircularRevealAnimation(
              animation: animation,
              centerOffset: Offset(80, 80),
              maxRadius: MediaQuery.of(context).size.longestSide * 1.1,
              child: Icon(
                widget.iconData,
                color: colors.activeNavigationBarColor,
                size: 160,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
