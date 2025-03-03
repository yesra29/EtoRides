import 'package:eto_rides/loginPages/view/otp_verification_page.dart';
import 'package:eto_rides/utils/assets_path.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage1 extends StatefulWidget {
  const LoginPage1({super.key});

  @override
  State<LoginPage1> createState() => _LoginPage1State();
}

class _LoginPage1State extends State<LoginPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Enter your\nmobile number",
              softWrap: true,
              maxLines: 2,
              style: GoogleFonts.baloo2(
                fontSize: 34,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "This number will be used for every\ncommunication. You shall received as SMS with\ncode for verification.",
              style: GoogleFonts.baloo2(fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(top: 16.0),
                  hintText: "Your Number",
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(top: 18.0, right: 30.0),
                    child: Text(
                      "+91",
                      style: GoogleFonts.baloo2(
                          fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                  ),
                  prefixStyle: GoogleFonts.baloo2(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  hintStyle: GoogleFonts.baloo2(
                    fontWeight: FontWeight.w300,
                    color: Colors.grey.shade400,
                  )),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Checkbox(
                  value: false,
                  onChanged: (value) {},
                  fillColor: WidgetStateProperty.all(const Color(0xFF1D9464)),
                  checkColor: Colors.white,
                  side: const BorderSide(color: Color(0xFF1D9464)),
                ),
                Text.rich(
                  TextSpan(
                    text: 'I have read and agreed to the ', // Normal text
                    style:
                        GoogleFonts.baloo2(fontSize: 16, color: Colors.black),
                    children: const [
                      TextSpan(
                        text:
                            'Terms and\nConditions', // Green-colored text with a new line
                        style: TextStyle(
                            color: Colors.green,
                            decoration: TextDecoration.underline,
                            decorationColor: Color(0xFF1D9464)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            _buildContinueButton(context),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                "OR Login With",
                style: GoogleFonts.baloo2(
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _socialContainer(
                  const Image(image: AssetImage(AssetPath.fb)),
                ),
                const SizedBox(
                  width: 10,
                ),
                _socialContainer(
                  Image.asset(AssetPath.google),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget _buildContinueButton(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const OtpVerificationPage()),
      );
    },
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40.0),
        color: Colors.black,
      ),
      height: 70,
      width: double.infinity,
      alignment: Alignment.center,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Get OTP",
            style: GoogleFonts.baloo2(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400),
          ),
          const SizedBox(width: 5),
          const Icon(Icons.arrow_outward, color: Colors.white, size: 24),
        ],
      ),
    ),
  );
}

Widget _socialContainer(
  Image? image,
) {
  return Container(
    height: 60,
    width: 120,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40.0),
        color: Colors.white,
        border: Border.all(color: Colors.black)),
  );
}
