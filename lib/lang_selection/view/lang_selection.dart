import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
              const Column(
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
              const Text(
                "This number will be used for every communication.",
                softWrap: true,
                maxLines: 2,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                    color: const Color(0XFF1D9464),
                    borderRadius: BorderRadius.circular(24.0)),
                height: 200,
                width: double.infinity,
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Use Eto rides as",
                            softWrap: true,
                            maxLines: 2,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 26),
                          ),
                          Text(
                            "Passenger",
                            softWrap: true,
                            maxLines: 2,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 26),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.groups_outlined,
                      color: Colors.white,
                      size: 40,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24.0),
                    border: Border.all(color: Colors.black, width: 1)),
                height: 200,
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top:12.0,left: 12),
                      child: Column(
                        children: [
                          Text(
                            "Join us as eto",
                            style: TextStyle(color: Colors.black, fontSize: 24,fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "driver partner",
                            style: TextStyle(color: Colors.black, fontSize: 24,fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                      width: 90,
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top:20.0),
                      child: FaIcon(FontAwesomeIcons.carSide,size: 40,),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 50),
              Column(
                children: [
                  Container(
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
                        const Text(
                          "Continue",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.arrow_outward,
                          color: Colors.white,
                          size: 24,
                        ),
                      ],
                    ),

                    // Icon(
                    //   Icons.arrow_forward,
                    //   color: Colors.white,
                    // )
                  ),
                ],
              ),
            ],
          ),
        )));
  }
}
