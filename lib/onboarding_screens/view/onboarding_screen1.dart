import 'package:eto_rides/langSelectionPage/view/lang_selection_page.dart';
import 'package:eto_rides/utils/assets_path.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen1 extends StatefulWidget {
  const StartScreen1({super.key});

  @override
  State<StartScreen1> createState() => _StartScreen1State();
}

class _StartScreen1State extends State<StartScreen1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Image(
                image: AssetImage(AssetPath.vehicle),
                fit: BoxFit.fill,
              ),
              _boldText("Book your reliable"),
              _boldText("Eto ride in town."),
        const SizedBox(height: 20),
        _lightText("Eto Ride is your easy-to-go solution for getting"),
        _lightText("around town with comfort"),
              const SizedBox(
                height: 30,
              ),
              _buildContinueButton(context),

            ],
          ),
        ),
      ),
    );
  }
}

Widget _boldText(
  String? text,
){
  return Text(
    text?? "",
    style: GoogleFonts.montserrat(
        fontWeight: FontWeight.bold, fontSize: 32),
  );
}

Widget _lightText(
    String? text,
    ){
  return Text(
    text?? "",
    style:const TextStyle(
        fontWeight: FontWeight.w400, fontSize: 16),

  );
}

Widget _buildContinueButton(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context, MaterialPageRoute(builder: (context) => const LangSelectionPage()),
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
            "Get Started",
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400),
          ),
          SizedBox(width: 5),
          Icon(Icons.arrow_outward, color: Colors.white, size: 24),
        ],
      ),
    ),
  );
}





