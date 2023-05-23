import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wehack/app_styles.dart';
import 'package:wehack/screens/home_screen.dart';
import 'screens/onboarding_screen.dart';

bool? seenOnboard;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays(
      [SystemUiOverlay.bottom, SystemUiOverlay.top]);
  SharedPreferences pref = await SharedPreferences.getInstance();
  seenOnboard = pref.getBool('seenOnboard') ?? false;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // textTheme: GoogleFonts.manropeTextTheme(
        //   Theme.of(context).textTheme,
        // ),
        primarySwatch: Colors.blue,
      ),
      home: const OnboardingScreen(),
      // AnimatedSplashScreen(
      //   duration: 6000,
      //   splash: Lottie.network(
      //       "https://assets10.lottiefiles.com/packages/lf20_htdr8jgg.json",
      //       height: 600,
      //       width: 600),
      //   splashIconSize: 400,
      //   nextScreen: const OnboardingScreen(),
      //   splashTransition: SplashTransition.fadeTransition,
      //   backgroundColor: kPrimaryColor,
      // ),
    );
  }
}
