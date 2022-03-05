import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rentify_inspection/screens/inspection/Inspection_dashboard.dart';
import 'package:rentify_inspection/utils/routes.dart';
import 'package:rentify_inspection/utils/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context)  {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Rentify",
      theme: appTheme(),
      routes: getRoutes(),
      home: InspectionDashboard(),
    );
  }
}

