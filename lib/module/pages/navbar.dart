import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/const/colors.dart';
import 'package:plant_app/module/cart/cart_screen.dart';
import 'package:plant_app/module/favorite/favorite_screen.dart';
import 'package:plant_app/module/home/screens/home_screen.dart';
import 'package:plant_app/module/profile/profile_screen.dart';
import 'package:plant_app/module/qrcode/qr_screen.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int selectedIndex = 0;

  final List<Widget> screens = const [
    HomeScreen(),
    FavoriteScreen(),
    QrScreen(),
    CartScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          _bottomNavItems(Icons.home, '', 0, 30.0),
          _bottomNavItems(Icons.favorite_outline, '', 1, 30.0),
          _bottomNavItem(CupertinoIcons.qrcode, '', 2, 30.0),
          _bottomNavItems(Icons.shopping_bag_outlined, '', 3, 30.0),
          _bottomNavItems(Icons.person, '', 4, 30.0),
        ],
      ),
      body: Stack(
        children: screens.asMap().entries.map((entry) {
          final i = entry.key;
          final screen = entry.value;
          return Offstage(
            offstage: selectedIndex != i,
            child: screen,
          );
        }).toList(),
      ),
    );
  }

  BottomNavigationBarItem _bottomNavItems(
      IconData icon, String label, int index, double size) {
    return BottomNavigationBarItem(
      icon: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Icon(
          icon,
          size: size, // Mengatur ukuran ikon
          color: selectedIndex == index ? green : grey3,
        ),
      ),
      label: label,
    );
  }

  BottomNavigationBarItem _bottomNavItem(
      IconData icon, String label, int index, double size) {
    return BottomNavigationBarItem(
      icon: Container(
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: black,
        ),
        child: Icon(
          icon,
          size: size, // Mengatur ukuran ikon
          color: selectedIndex == index ? green : grey3,
        ),
      ),
      label: label,
    );
  }
}
