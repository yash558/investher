class Onboarding {
  final String title;
  final String image;

  Onboarding({
    required this.title,
    required this.image,
  });
}

List<Onboarding> onboardingContent = [
  Onboarding(
    title: "WELCOME TO \n INVESTHER SAVING APP",
    image: "assets/images/onboarding_image_1.png",
  ),
  Onboarding(
    title: "CREATE YOUR ACCOUNT AND START YOUR NEW JOURNEY",
    image: "assets/images/onboarding_image_2.png",
  ),
  Onboarding(
    title: "KEEP TRACK OF YOUR \n SAVING AND INVEST IT.",
    image: "assets/images/onboarding_image_3.png",
  ),
];
