import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ign_redesign/constants.dart';
import 'package:ign_redesign/views/discover.dart';
import 'package:ign_redesign/views/discussion.dart';
import 'package:ign_redesign/views/home.dart';
import 'package:ign_redesign/views/profile.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;
  onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static List<Widget> _viewList = [
    Home(),
    Discover(),
    Discussion(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          bodyContent,
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: bottomNavigationBar,
          )
        ],
      ),
    );
  }

  Widget get bodyContent {
    return Container(
      child: _viewList.elementAt(_selectedIndex),
    );
  }

  Widget get bottomNavigationBar {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(40.0),
        topRight: Radius.circular(40.0),
      ),
      child: BottomNavigationBar(
        onTap: onTapped,
        currentIndex: _selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/home.svg",
              width: 20.0,
              color: kGrey,
            ),
            activeIcon: SvgPicture.asset(
              "assets/home.svg",
              width: 20.0,
              color: kRedColor,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/play.svg",
              width: 20.0,
              color: kGrey,
            ),
            activeIcon: SvgPicture.asset(
              "assets/play.svg",
              width: 20.0,
              color: kRedColor,
            ),
            label: "Discover",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/comment.svg",
              width: 20.0,
              color: kGrey,
            ),
            activeIcon: SvgPicture.asset(
              "assets/comment.svg",
              width: 20.0,
              color: kRedColor,
            ),
            label: "Discussion",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/user.svg",
              width: 20.0,
              color: kGrey,
            ),
            activeIcon: SvgPicture.asset(
              "assets/user.svg",
              width: 20.0,
              color: kRedColor,
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
