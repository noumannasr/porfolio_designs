import 'package:bright_up_image/constant.dart';
import 'package:bright_up_image/view/animationCust/home/home_screen.dart';
import 'package:bright_up_image/view/animationCust/search/search_screen.dart';
import 'package:bright_up_image/widgets/icon_and_text_item.dart';
import 'package:bright_up_image/widgets/profile_item.dart';
import 'package:bright_up_image/widgets/round_circle_icon.dart';
import 'package:bright_up_image/widgets/search_item.dart';
import 'package:flutter/material.dart';

import '../../widgets/others_selected_index_view.dart';

class AnimationVm extends ChangeNotifier {
  int _selectedIndex = 2;
  int searchIndex = 0;

  int get selectedIndex => _selectedIndex;

  List<IconData> navIcons = [
    Icons.search,
    Icons.chat,
    Icons.home,
    Icons.favorite,
    Icons.person,
  ];

  setSelectedIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  Widget getSelectedView() {
    switch (selectedIndex) {
      case 0:
        return const SearchScreen();
      case 1:
        return  const IndexView(text: 'CHAT');
      case 2:
        return const HomeScreen();
      case 3:
        return const IndexView(text: 'FAVORITES');
      case 4:
        return const IndexView(text: 'PROFILE');
      default:
        return const Text('Invalid index');
    }
  }

  Widget getAppBarLeading() {
    switch (selectedIndex) {
      case 0:
        return const MySearchWidget();
      case 2:
        return  const IconAndTextWidget();
      default:
        return const SizedBox();
    }
  }

  List<Widget> getAppBarActions() {
    switch (selectedIndex) {
      case 0:
        return  [
          const RoundCircleIcon(icon: Icons.filter_alt, size: 20,),
        ];
      case 2:
        return  [
          const ProfileItem(),
        ];
      default:
        return  [];
    }
  }

  List<Color> getBgColor() {
    switch (selectedIndex) {
      case 2:
        return [
          AppColors.lightWhite,
          AppColors.lightAlmond,
        ];

      default:
        return [
          AppColors.darkBlack,
          AppColors.darkBlack,
        ];
    }
  }
}
