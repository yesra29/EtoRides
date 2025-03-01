import 'package:eto_rides/onboarding_screens/view/onboarding_screen1.dart';
import 'package:eto_rides/utils/assets_path.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LangSelectionPage extends StatefulWidget {
  const LangSelectionPage({super.key});

  @override
  State<LangSelectionPage> createState() => _LangSelectionPageState();
}

class _LangSelectionPageState extends State<LangSelectionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(),
              const SizedBox(height: 10),
              const Text(
                "Get prompt and reliable assistance anytime with our comprehensive town-wide service",
                softWrap: true,
                maxLines: 2,
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _langContainer(
                    image: const Image(image: AssetImage(AssetPath.translate),height: 20,),
                    title: "English",
                  ),
                  _langContainer(
                    image: const Image(image: AssetImage(AssetPath.hindi_icon),height: 50,),
                    title: "Hindi", // Changed to differentiate
                  ),
                ],
              ),
             const SizedBox(height: 10),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 _langContainer(
                   image: const Image(image: AssetImage(AssetPath.bengali_icon),height: 50,),
                   title: "Bengali", // Changed to differentiate
                 ),
                 _langContainer(
                   border: Border.all(color: Colors.transparent
                   ),

                 ),

               ],
             ),
              const SizedBox(
                height: 20,
              ),
              _buildContinueButton(context),
            ],
          ),
        ),
      ),
    );
  }


  Widget _buildHeader() {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Select Your",
              style: GoogleFonts.montserrat(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
            Text(
              "Language",
              style: GoogleFonts.montserrat(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
          ],
        ),
        const Spacer(),
        const Image(image: AssetImage(AssetPath.translate),height: 50,), // Removed `const`
      ],
    );
  }

  Widget _langContainer({
     Image? image,
     String? title,
     Border? border,
  }) {
    return Container(
      width: 180,
      height: 120,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: border ?? Border.all(color: Colors.black, width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          image??
          const SizedBox(height: 10),
          Text(
            title?? "",
            style: GoogleFonts.montserrat(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildContinueButton(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context, MaterialPageRoute(builder: (context) => const StartScreen1()),
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
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Continue",
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400),
          ),
          SizedBox(width: 5),
          Icon(Icons.arrow_outward, color: Colors.white, size: 24),
        ],
      ),
    ),
  );
}
