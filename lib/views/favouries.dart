import 'package:flutter/material.dart';
import 'package:flutter_assesment/widgets/custom_bottom_bar.dart';
import 'package:flutter_assesment/widgets/utils/enums.dart';
import 'package:flutter_svg/svg.dart';

class Favourites extends StatefulWidget {
  const Favourites({Key? key}) : super(key: key);

  @override
  State<Favourites> createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
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
      bottomNavigationBar:
          CustomBottomNavBar(selectedMenu: MenuState.favourites),
    );
  }
}
