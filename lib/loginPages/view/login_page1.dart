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
            )
          ],
        ),
      ),
    );
  }
}
