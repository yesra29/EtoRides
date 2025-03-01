import 'package:eto_rides/onboarding_screens/onboarding_screen3.dart';
import 'package:eto_rides/utils/assets_path.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen2 extends StatefulWidget {
  const OnboardingScreen2({super.key});

  @override
  State<OnboardingScreen2> createState() => _OnboardingScreen2State();
}

class _OnboardingScreen2State extends State<OnboardingScreen2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.all(40.0),
              child: const Image(
                image: AssetImage(AssetPath.goods),
                height: 320,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _boldText("Send yours goods"),
                  _boldText("with eto"),
                  _lightText("Need to send goods across town? Look no"),
                  _lightText("further than Eto for a dependable and efficient"),
                  _lightText("delivery service that meets all your shipping"),
                  _lightText("needs in town."),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(Icons.linear_scale_outlined),
                      _buildContinueButton(context)
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget _boldText(
  String? text,
) {
  return Text(
    text ?? "",
    style: GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 32),
  );
}

Widget _lightText(
  String? text,
) {
  return Text(
    text ?? "",
    style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
  );
}

Widget _buildContinueButton(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const OnboardingScreen3()),
      );
    },
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40.0),
        color: Colors.black,
      ),
      height: 50,
      width: 120,
      alignment: Alignment.center,
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Next",
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400),
          ),
          SizedBox(width: 5),
          Icon(Icons.arrow_outward, color: Colors.white, size: 24),
        ],
      ),
    ),
  );
}
