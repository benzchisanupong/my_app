import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/ui/home.dart';
import 'package:my_app/ui/welcome.dart';
import 'package:my_app/value.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreens() {
    return [
      Home(),
      Welcome(),
      Welcome(),
      Welcome(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.house_fill),
        title: (""),
        activeColorPrimary: ColorSelect.primary,
        inactiveColorPrimary: ColorSelect.background,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.add_circled_solid),
        title: (""),
        activeColorPrimary: ColorSelect.primary,
        inactiveColorPrimary: ColorSelect.background,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.bell_fill),
        title: (""),
        activeColorPrimary: ColorSelect.primary,
        inactiveColorPrimary: ColorSelect.background,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.person_fill),
        title: (""),
        activeColorPrimary: ColorSelect.primary,
        inactiveColorPrimary: ColorSelect.background,
      ),
    ];
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true,
      // Default is true.
      resizeToAvoidBottomInset: true,
      // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true,
      // Default is true.
      hideNavigationBarWhenKeyboardShows: true,
      // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      popAllScreensOnTapOfSelectedTab: true,
      navBarStyle:
          NavBarStyle.style12, // Choose the nav bar style with this property.
    );
  }
}
