import 'package:cargig_user_app/routes/app_route.dart';
import 'package:cargig_user_app/screens/home_screen.dart';
import 'package:cargig_user_app/utils/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cargic',
      theme: ThemeData(
        primaryColor: CargicColors.brandBlue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: HomeScreen.id,
      routes: appRoute,
    );
  }
}
