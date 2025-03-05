import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserDetailPage extends StatefulWidget {
  const UserDetailPage({super.key});

  @override
  State<UserDetailPage> createState() => _UserDetailPageState();
}

class _UserDetailPageState extends State<UserDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Enter details",
                style: GoogleFonts.baloo2(
                    fontSize: 34, fontWeight: FontWeight.w600),
              ),
              Text(
                "Enter your basic details to get started",
                style: GoogleFonts.baloo2(
                    fontSize: 20, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 20,
              ),
              _textContainer(
                text : "First name",
                style: GoogleFonts.baloo2(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
          _textField(
            hintText: "Please enter first name",
          )
            ],
          ),
        ),
      ),
    );
  }
}

Widget _textContainer({required String text, required TextStyle style}) {
  return Text(
    text,
    style: style,
  );
}

Widget _textField({required String hintText}){
  return Container(
    color: const Color(0xFFF1F5FE),
    child: TextField(
      hintText: hintText,
    ),
  );
}

