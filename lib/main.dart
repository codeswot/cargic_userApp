import 'package:cargig_user_app/providers/app_data.dart';
import 'package:cargig_user_app/routes/app_route.dart';
import 'package:cargig_user_app/screens/onboarding_screen.dart';
import 'package:cargig_user_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppData(),
      child: MaterialApp(
        title: 'Cargic',
        theme: ThemeData(
          primaryColor: CargicColors.brandBlue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'Niramit',
        ),
        //TODO: check if userLogin is available // HomeScreen or OnBoardingScreen
        initialRoute: OnBoardingScreen.id,
        routes: appRoute,
      ),
    );
  }
}
