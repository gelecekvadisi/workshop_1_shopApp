// import 'package:flutter/material.dart' as material;
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../util/constants.dart';

// class MyAppBar extends material.AppBar {
class MyAppBar extends AppBar {
  Color backgroundColor, iconColor;

  MyAppBar({
    super.key,
    required BuildContext context,
    this.backgroundColor = Colors.white,
    this.iconColor = Constants.textColor,
  }) : super(
    backgroundColor: backgroundColor,
          leading: IconButton(
            onPressed: () {
              Navigator.maybePop(context);
            },
            icon: Center(
              child: SvgPicture.asset(
                "assets/icons/back.svg",
                colorFilter: ColorFilter.mode(
                    iconColor, BlendMode.srcIn),
              ),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Center(
                child: SvgPicture.asset(
                  "assets/icons/search.svg",
                  colorFilter: ColorFilter.mode(
                      iconColor, BlendMode.srcIn),
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/icons/cart.svg",
                      colorFilter: ColorFilter.mode(
                          iconColor, BlendMode.srcIn),
                    ),
                    Positioned(
                      right: 0,
                      top: 0,
                      child: Container(
                        width: 10,
                        height: 10,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.redAccent,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
}
