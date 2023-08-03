import 'package:flutter/material.dart';
import 'package:registration_bloc/presentation/pages/RegiPhonPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RegistrationCodeWidget(),
    );
  }
}

