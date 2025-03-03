import 'package:eto_rides/user_type_selection_screen/view/user_type_selection_screen.dart';
import 'package:eto_rides/utils/assets_path.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const UserTypeSelectionScreen()),
      );
    });
  }

  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AssetPath.splash), fit: BoxFit.cover)));
  }
}
