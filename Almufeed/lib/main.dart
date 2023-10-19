import 'package:almufeed/SmsVerificationPage.dart';
import 'package:almufeed/dashboard.dart';
import 'package:almufeed/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.black12),
          useMaterial3: true,
        ),
        home: login()
    );
  }
}
