import 'package:bright_up_image/constant.dart';
import 'package:bright_up_image/view/animationCust/main_vm.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FloatingNavBar extends StatelessWidget {
  const FloatingNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Consumer<AnimationVm>(
      builder: (context, provider, child) {
        return Container(
          margin: EdgeInsets.only(
              right: size.width * 0.18,
              left: size.width * 0.18,
              bottom: size.height * 0.02),
          height: size.height * 0.07,
          decoration: BoxDecoration(
            color: AppColors.navBarBg,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: provider.navIcons.map((icon) {
              int index = provider.navIcons.indexOf(icon);
              bool isSelected = provider.selectedIndex == index;
              return GestureDetector(
                onTap: () {
                  provider.setSelectedIndex(index);
                },
                child: Material(
                  color: Colors.transparent,
                  child: Container(
                    height: isSelected ? 45 : 35,
                    width: isSelected ? 45 : 35,
                    decoration: BoxDecoration(
                      color: isSelected
                          ? AppColors.amberColor
                          : AppColors.unSelectedBg,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      icon,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        );
      },
    );
  }
}
