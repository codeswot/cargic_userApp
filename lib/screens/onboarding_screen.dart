import 'package:cargig_user_app/screens/login_method_screen.dart';
import 'package:cargig_user_app/widgets/onboarding_data.dart';
import 'package:cargig_user_app/widgets/onboarding_widget.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  static const String id = 'OnBoardingScreen';
  final List<CargicOnbordingData> onBoardingList = [
    CargicOnbordingData(
      title: "Car Wash",
      imagePath: 'images/carwash.svg',
      desc:
          "Doorstep Car wash Include: Exterior Wash, Interior Wash, Full wash, Exterior Detailing, Disinfection",
    ),
    CargicOnbordingData(
      title: "Car Service",
      imagePath: 'images/carservice.svg',
      desc: "Doorstep Car Service, Engine oil change \n (More to come)",
    ),
    CargicOnbordingData(
      title: "Car Upgrade",
      imagePath: 'images/carupgrade.svg',
      desc: "Car Upgrade (Modification)",
    ),
    CargicOnbordingData(
      title: "Registeration",
      imagePath: 'images/carregisteration.svg',
      desc:
          "Registration Renewal Apply for New Car Papers, Renew Car Papers, Request Car number plate, Customize Car number plate",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroScreen(
        onBoardingList,
        MaterialPageRoute(
          builder: (context) => LoginMethodScreen(),
        ),
      ),
    );
  }
}
