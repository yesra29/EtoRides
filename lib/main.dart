import 'package:eto_rides/firebase_options.dart';
import 'package:eto_rides/loginPages/view/login_page1.dart';
import 'package:eto_rides/loginPages/view/otp_verification_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main()  async  {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options : DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const OtpVerificationPage(),
    );
  }
}
