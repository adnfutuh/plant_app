import 'package:flutter/material.dart';
import '../const/colors.dart';
import 'home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Plant a\ntree for live",
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              wordSpacing: 1,
              letterSpacing: 1,
            ),
          ),
          Image.asset(
            'assets/images/welcome.png',
            fit: BoxFit.cover,
            scale: 1.3,
          ),
          const Text(
            "worldwide delivery \nwithin 10-15 days",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 50),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const HomeScreen(),
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(14),
              decoration: const BoxDecoration(
                color: green,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4,
                    spreadRadius: 1,
                  )
                ],
              ),
              child: const Text(
                "Go",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
