import 'package:cargig_user_app/screens/home_screen.dart';
import 'package:cargig_user_app/screens/onboarding_screen.dart';
import 'package:flutter/cupertino.dart';

Map<String, WidgetBuilder> appRoute = {
  HomeScreen.id: (context) => HomeScreen(),
  OnBoardingScreen.id: (context) => OnBoardingScreen(),
};
