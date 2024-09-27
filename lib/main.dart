import "package:flutter/material.dart";
import "package:plant_app/const/themes.dart";
import "module/pages/screens/welcome_screen.dart";

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightThemeData(context),
      debugShowCheckedModeBanner: false,
      home: const WelcomeScreen(),
    );
  }
}
