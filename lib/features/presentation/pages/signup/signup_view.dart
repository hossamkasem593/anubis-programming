import 'package:flutter/material.dart';
import 'package:signup/features/presentation/pages/signup/widgets/signup_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/images/back.jpg'),
        fit: BoxFit.cover,
      ),
      


      ),
      child: Scaffold(
       backgroundColor: Colors.transparent,
        
         body: SignUpViewBody(),
               
      ),
    );
  }
}