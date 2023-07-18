
import 'package:exercise_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      height: 70,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BottomNavItems(
            svgSrc: "assets/icons/calendar.svg",
            buttonTitle: "Today",
            press: () {},
          ),
          BottomNavItems(
            svgSrc: "assets/icons/gym.svg",
            buttonTitle: "All Exercise",
            press: () {},
            isActive: true,
          ),
          BottomNavItems(
            svgSrc: "assets/icons/Settings.svg",
            buttonTitle: "Settings",
            press: () {},
          )
        ],
      ),
    );
  }
}

class BottomNavItems extends StatelessWidget {
  final String svgSrc;
  final String buttonTitle;
  final VoidCallback press;
  final bool isActive;

  const BottomNavItems({
    super.key,
    required this.svgSrc,
    required this.buttonTitle,
    required this.press,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(svgSrc, color: isActive? kActiveIconColor : kTextColor),
          Text(buttonTitle, style: TextStyle(color: isActive? kActiveIconColor : kTextColor),),
        ],
      ),
    );
  }
}
