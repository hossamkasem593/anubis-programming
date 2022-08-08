import 'package:flutter/material.dart';
import 'package:signup/features/presentation/pages/signup/signup_view.dart';

void main() {
  runApp( SignUp());
}

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUpView(),
    );
  }
}
