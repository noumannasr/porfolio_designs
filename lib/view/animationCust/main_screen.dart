import 'package:animate_do/animate_do.dart';
import 'package:bright_up_image/constant.dart';
import 'package:bright_up_image/view/animationCust/main_vm.dart';
import 'package:bright_up_image/widgets/icon_and_text_item.dart';
import 'package:bright_up_image/widgets/nav_bar.dart';
import 'package:bright_up_image/widgets/profile_item.dart';
import 'package:bright_up_image/widgets/round_circle_icon.dart';
import 'package:bright_up_image/widgets/search_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ChangeNotifierProvider(
      create: (BuildContext context) => AnimationVm(),
      child: Consumer<AnimationVm>(
        builder: (context, provider, child) {
          return Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft, // Change this for desired direction
                end: Alignment.bottomRight,
                colors: provider.getBgColor(),
              ),
            ),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                leadingWidth: provider.selectedIndex == provider.searchIndex
                    ? size.width * 0.8
                    : size.width * 0.4,
                leading: provider.getAppBarLeading(),
                actions: provider.getAppBarActions(),
              ),
              body: Stack(
                children: [
                  // selected index view
                  provider.getSelectedView(),
                  // creating navigation bar here
                  FadeInUp(
                    delay: const Duration(milliseconds: 3000),
                    child: const Align(
                      alignment: Alignment.bottomCenter,
                      child: FloatingNavBar(),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
