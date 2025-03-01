import 'package:eto_rides/loginPages/view/login_page1.dart';
import 'package:eto_rides/utils/assets_path.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen3 extends StatefulWidget {
  const OnboardingScreen3({super.key});

  @override
  State<OnboardingScreen3> createState() => _OnboardingScreen3State();
}

class _OnboardingScreen3State extends State<OnboardingScreen3> {
  bool isButtonPressed = false;
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
                image: AssetImage(AssetPath.coin_bag),
                height: 320,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _boldText("Eto coin makes"),
                  _boldText("your ride cost later"),
                  _lightText("Discover a new way to save on transportation"),
                  _lightText("costs with Eto Coin, the innovation digital"),
                  _lightText("currency that makes your rides more affordable."),
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

  Widget _buildContinueButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const LoginPage1()),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40.0),
          color: isButtonPressed ? Colors.green : Colors.black,
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
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(width: 5),
            Icon(Icons.arrow_outward, color: Colors.white, size: 24),
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

// Widget _buildContinueButton(BuildContext context) {
//   var isButtonPressed;
//   return GestureDetector(
//     onTap: () {
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => const LoginPage1()),
//       );
//     },
//     child: Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(40.0),
//         color: isButtonPressed ? Colors.black : Colors.green,
//       ),
//       height: 50,
//       width: 120,
//       alignment: Alignment.center,
//       child: const Row(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Text(
//             "Next",
//             style: TextStyle(
//                 color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400),
//           ),
//           SizedBox(width: 5),
//           Icon(Icons.arrow_outward, color: Colors.white, size: 24),
//         ],
//       ),
//     ),
//   );
// }
