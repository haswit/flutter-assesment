import 'package:flutter/material.dart';
import 'package:flutter_assesment/widgets/custom_bottom_bar.dart';
import 'package:flutter_assesment/widgets/utils/enums.dart';
import 'package:flutter_svg/flutter_svg.dart';

class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IconButton(
          icon: SvgPicture.asset(
            "assets/icons/Conversation.svg",
          ),
          onPressed: () {},
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}
