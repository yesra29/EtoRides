import 'package:eto_rides/langSelectionPage/view/lang_selection_page.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _LangSelectionState();
}

class _LangSelectionState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeaderText(),
              const SizedBox(height: 10),
              const Text(
                "This number will be used for every communication.",
                softWrap: true,
                maxLines: 2,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 30),
              _buildOptionCard(
                title: "Use Eto rides as",
                subtitle: "Passenger",
                icon: Icons.groups,
                color: const Color(0xFF1D9464),
                textColor: Colors.white,
                border: null,
              ),
              const SizedBox(height: 20),
              _buildOptionCard(
                title: "Join us as eto",
                subtitle: "driver partner",
                icon: Icons.person,
                color: Colors.white,
                textColor: Colors.black,
                border: Border.all(color: Colors.black, width: 1),
              ),
              const SizedBox(height: 50),
              _buildContinueButton(),
            ],
          ),
        ),
      ),
    );
  }

  /// **Header Section**
  Widget _buildHeaderText() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Continue with",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 36),
        ),
        Text(
          "Eto rides as an?",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 36),
        ),
      ],
    );
  }

  /// **Reusable Option Card**
  Widget _buildOptionCard({
    required String title,
    required String subtitle,
    required IconData icon,
    required Color color,
    required Color textColor,
    Border? border,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(24.0),
        border: border,
      ),
      height: 200,
      width: double.infinity,
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        color: textColor,
                        fontSize: 24,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(
                        color: textColor,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Icon(icon, size: 60, color: textColor),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            "This number will be used for",
            style: TextStyle(color: textColor, fontSize: 14, fontWeight: FontWeight.w300),
          ),
          Text(
            "every communication",
            style: TextStyle(color: textColor, fontSize: 14, fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }

  /// **Continue Button**
  Widget _buildContinueButton() {
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
}
