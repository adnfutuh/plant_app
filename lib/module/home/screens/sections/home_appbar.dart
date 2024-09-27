import 'package:flutter/material.dart';
import 'package:plant_app/const/colors.dart';
import 'package:plant_app/const/text.dart';

class HomeAppbar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppbar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {},
        icon: const ImageIcon(
          AssetImage('assets/icons/menu.png'),
          color: black,
        ),
      ),
      title: Text(
        "HOME",
        style: bold.copyWith(fontSize: 18),
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 16),
          child: ImageIcon(
            AssetImage('assets/icons/search.png'),
            color: black,
          ),
        ),
      ],
    );
  }
}
