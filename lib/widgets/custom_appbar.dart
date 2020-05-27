import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListTile(
        title: Align(
          alignment: Alignment.topLeft,
          child: Image.asset(
            "assets/logo.png",
            width: 60.0,
            height: 60.0,
          ),
        ),
        trailing: IconButton(
          icon: SvgPicture.asset(
            "assets/search.svg",
            width: 25.0,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
