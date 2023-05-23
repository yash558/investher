import 'package:flutter/material.dart';
import 'package:wehack/app_styles.dart';
import 'package:wehack/data/onboard_data.dart';
import 'package:wehack/screens/home.dart';
import 'package:wehack/screens/home_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);
  AnimatedContainer dotIndicator(index) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.only(right: 10),
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        color: currentPage == index ? kSecondaryColor : kPrimaryColor,
        shape: BoxShape.circle,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            flex: 10,
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
              itemCount: onboardingContent.length,
              itemBuilder: (context, index) => Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    onboardingContent[index].title,
                    style: kTitle,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 400,
                    child: Image.asset(
                      onboardingContent[index].image,
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      style: kBodyText1,
                      children: [
                        TextSpan(text: "WE CAN "),
                        TextSpan(
                            text: "HELP YOU ",
                            style: TextStyle(color: kPrimaryColor)),
                        TextSpan(text: "TO BE A BETTER "),
                        TextSpan(
                          text: "MANAGE YOUR ",
                        ),
                        TextSpan(
                            text: "SAVINGS.",
                            style: TextStyle(color: kPrimaryColor)),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                currentPage == onboardingContent.length - 1
                    ? TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomeScreen()));
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: kPrimaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          minimumSize: const Size(300, 50),
                        ),
                        child: const Text(
                          "Get Started",
                          style: kBodyText1,
                        ),
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const HomeScreen(),
                                ),
                              );
                            },
                            child: const Text(
                              "Skip",
                              style: kTitle2,
                            ),
                          ),
                          Row(
                            children: List.generate(
                              onboardingContent.length,
                              (index) => dotIndicator(index),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              _pageController.nextPage(
                                  duration: const Duration(milliseconds: 400),
                                  curve: Curves.easeInOut);
                            },
                            child: const Text(
                              "Next",
                              style: kTitle2,
                            ),
                          ),
                        ],
                      ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
