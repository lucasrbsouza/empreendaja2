import 'package:flutter/material.dart';
import 'package:flutter_application_empreendaja/const/strings.dart';
import 'package:flutter_application_empreendaja/views/auth_screen/login_screen.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: appname,
      home: const LoginScreen(),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
      ),
    );
  }
}
