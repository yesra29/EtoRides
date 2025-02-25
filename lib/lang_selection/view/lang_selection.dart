import 'package:flutter/material.dart';

class LangSelection extends StatefulWidget {
  const LangSelection({super.key});

  @override
  State<LangSelection> createState() => _LangSelectionState();
}

class _LangSelectionState extends State<LangSelection> {
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Continue with",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 36),
                  ),
                  Text(
                    "Eto rides as an?",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 36),
                  ),
                ],
              ),
              Text(
                "This number will be used for every communication.",
                softWrap: true,
                maxLines: 2,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                    color: Color(0XFF1D9464),
                    borderRadius: BorderRadius.circular(24.0)),
                height: 200,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    "Use Eto rides as Passenger",
                    softWrap: true,
                    maxLines: 2,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 26),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24.0),
                    border: Border.all(color: Colors.black, width: 1)),
                height: 200,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Text(
                        "Join us as eto driver partner",
                        softWrap: true,
                        maxLines: 2,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 26),
                      ),
                      Icon(Icons.people),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.0),
                  color: Colors.black,
                ),
                height: 70,
                width: double.infinity,
                child: Text(
                  "Continue",
                  style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
        )));
  }
}
