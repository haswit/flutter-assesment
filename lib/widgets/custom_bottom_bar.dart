import 'package:flutter/material.dart';
import 'package:flutter_assesment/views/favouries.dart';
import 'package:flutter_assesment/views/home.dart';
import 'package:flutter_assesment/views/notification.dart';
import 'package:flutter_assesment/views/profile.dart';
import 'package:flutter_assesment/widgets/utils/enums.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavBar extends StatelessWidget {
  CustomBottomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final kPrimaryColor = const Color(0xFFFF7643);
  final MenuState selectedMenu;
  final Color inActiveIconColor = const Color(0xFFB6B6B6);
  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = const Color(0xFFB6B6B6);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 75, 207, 244),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -15),
            blurRadius: 20,
            color: const Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(5),
            topRight: Radius.circular(5),
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30)),
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/Shop Icon.svg",
                  color: MenuState.home == selectedMenu
                      ? Colors.white
                      : Colors.white38,
                ),
                onPressed: () => Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (ctx) => const HomeScreen()),
                    (route) => false),
              ),
              InkWell(
                onTap: () => null,
                child: IconButton(
                  icon: SvgPicture.asset(
                    "assets/icons/Heart Icon.svg",
                    color: MenuState.favourites == selectedMenu
                        ? Colors.white
                        : Colors.white38,
                    width: 23,
                  ),
                  onPressed: () => Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (ctx) => const Favourites()),
                      (route) => false),
                ),
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/Bell.svg",
                  color: MenuState.notifications == selectedMenu
                      ? Colors.white
                      : Colors.white38,
                ),
                onPressed: () => Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (ctx) => const notification()),
                    (route) => false),
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/User Icon.svg",
                  color: MenuState.profile == selectedMenu
                      ? Colors.white
                      : Colors.white38,
                ),
                onPressed: () => Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (ctx) => const profile()),
                    (route) => false),
              ),
            ],
          )),
    );
  }
}
