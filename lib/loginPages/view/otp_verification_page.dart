import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerificationPage extends StatefulWidget {
  const OtpVerificationPage({super.key});

  @override
  State<OtpVerificationPage> createState() => _OtpVerificationPageState();
}

class _OtpVerificationPageState extends State<OtpVerificationPage> {
  final TextEditingController _otpController = TextEditingController();

  @override
  void dispose() {
    _otpController.dispose(); // ✅ Always dispose controllers
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),
        body: Container(
          margin: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _textContainer("Verify OTP",
                  GoogleFonts.baloo2(fontSize: 32, fontWeight: FontWeight.w600)),
              const SizedBox(height: 10),

              Row(
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "Sent to ",
                          style: GoogleFonts.baloo2(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: "+918081207086",
                          style: GoogleFonts.baloo2(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 10),

              Text(
                "Change your Mobile Number?",
                style: GoogleFonts.baloo2(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.underline,
                ),
              ),

              const SizedBox(height: 20),

              Center(child: _numberContainer()), // ✅ Pass only controller

              const SizedBox(height: 20),

              Center(child: _buildResendButton()), // Centered Resend Button
            ],
          ),
        ),
      ),
    );
  }

  // ✅ OTP Input Field (using state controller)
  Widget _numberContainer() {
    return SizedBox(
      width: 250,
      child: PinCodeTextField(
        appContext: context,
        controller: _otpController, // ✅ Using controller from StatefulWidget
        keyboardType: TextInputType.number,
        length: 4,
        textStyle: GoogleFonts.baloo2(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(8),
          fieldHeight: 60,
          fieldWidth: 60,
          activeFillColor: Colors.white,
          inactiveFillColor: const Color(0xFFF1F5FE),
          inactiveColor: const Color(0xFFF1F5FE),
          selectedColor: const Color(0xFFF1F5FE),
          activeColor: const Color(0xFFF1F5FE),
        ),
        onChanged: (value) {},
      ),
    );
  }

  Widget _buildResendButton() {
    return GestureDetector(
      onTap: () {
        debugPrint("Resend OTP clicked!");
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40.0),
          color: Colors.black,
        ),
        height: 40,
        width: 240,
        child: Text(
          "Resend Code in 00:30 sec",
          style: GoogleFonts.baloo2(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}

Widget _textContainer(String text, TextStyle? style) {
  return Text(
    text,
    style: style,
  );
}
