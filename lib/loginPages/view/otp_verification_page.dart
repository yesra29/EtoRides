import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
    _otpController.dispose();
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
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _textContainer(
                    "Verify OTP",
                    GoogleFonts.baloo2(
                        fontSize: 32, fontWeight: FontWeight.w600)),
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
                              color: const Color(0xFF1D9464),
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
          
                _numberContainer(),
          
                const SizedBox(height: 20),
          
                _buildResendButton(),
                const SizedBox(height: 60),
                _buildVerifyButton(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
  
  Widget _numberContainer() {
    return SizedBox(
      width: 250,
      child: PinCodeTextField(
        inputFormatters: [
          LengthLimitingTextInputFormatter(4),
          FilteringTextInputFormatter.digitsOnly,
        ],
        appContext: context,
        onSaved: (pin1) {},
        controller: _otpController,
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
        onChanged: (value) {
          if (value.length == 1) {
    FocusScope.of(context).nextFocus();
          }
        },
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
        width: 230,
        child: Center(
          child: Text(
            "Resend Code in 00:30 sec",
            style: GoogleFonts.baloo2(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
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

Widget _buildVerifyButton(BuildContext context) {
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
        color: const Color(0xFF1D9464),
      ),
      height: 70,
      width: double.infinity,
      alignment: Alignment.center,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Verify",
            style: GoogleFonts.baloo2(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400),
          ),
          const SizedBox(width: 5),
        ],
      ),
    ),
  );
}
