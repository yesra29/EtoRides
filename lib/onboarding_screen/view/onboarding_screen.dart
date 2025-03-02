import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:eto_rides/langSelectionPage/view/lang_selection_page.dart';
import 'package:eto_rides/utils/assets_path.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  void _nextPage() {
    if (_currentIndex < 2) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LangSelectionPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: [
          _buildOnboardingScreen(
            AssetPath.vehicle,
            "Book your reliable",
            "Eto ride in town.",
            [
              "Eto Ride is your easy-to-go solution for getting",
              "around town with comfort."
            ],
          ),
          _buildOnboardingScreen(
            AssetPath.goods,
            "Send your goods",
            "with Eto",
            [
              "Need to send goods across town?",
              "Look no further than Eto for a dependable and efficient delivery service that meets all your shipping needs."
            ],
          ),
          _buildOnboardingScreen(
            AssetPath.coin_bag,
            "Eto coin makes",
            "your ride cost later",
            [
              "Discover a new way to save on transportation",
              "costs with Eto Coin, the innovative digital currency."
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildOnboardingScreen(String imagePath, String boldText1,
      String boldText2, List<String> lightTexts) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 60.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(imagePath, height: 320, fit: BoxFit.fill),
          const SizedBox(height: 20),
          _heading(boldText1),
          _heading(boldText2),
          const SizedBox(height: 10),
          ...lightTexts.map((text) => _subHeading(text)).toList(),
          const SizedBox(height: 30), // Space between text and navigation bar
          _buildBottomNavigation(),
        ],
      ),
    );
  }

  Widget _buildBottomNavigation() {
    if (_currentIndex == 0) {
      GestureDetector(
        onTap: _nextPage,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40.0),
            color: Colors.black,
          ),
          height: 50,
          width: double.infinity,
          alignment: Alignment.center,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                _currentIndex == 0 ? "Get Started" : "Next",
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(width: 5),
              const Icon(Icons.arrow_outward, color: Colors.white, size: 24),
            ],
          ),
        ),
      );
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: List.generate(3, (index) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 2),
              width: _currentIndex == index ? 25 : 15,
              height: 6,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: _currentIndex == index ? Colors.black : Colors.grey,
              ),
            );
          }),
        ),
        GestureDetector(
          onTap: _nextPage,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.0),
              color:
                  _currentIndex == 2 ? const Color(0xFF1D9464) : Colors.black,
            ),
            height: 50,
            width: 150,
            alignment: Alignment.center,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  _currentIndex == 0 ? "Get Started" : "Next",
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(width: 5),
                const Icon(Icons.arrow_outward, color: Colors.white, size: 24),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _heading(String text) {
    return Text(
      text,
      style: GoogleFonts.baloo2(fontWeight: FontWeight.bold, fontSize: 32),
    );
  }

  Widget _subHeading(String text) {
    return Text(
      text,
      style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 16),
    );
  }
}
