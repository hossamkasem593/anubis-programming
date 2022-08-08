
import 'package:flutter/material.dart';
import 'package:signup/core/constants.dart';
import 'package:signup/core/widgets/custom_button.dart';
import 'package:signup/core/widgets/custom_text_field.dart';


class SignUpViewBody extends StatelessWidget {
  var formKey = GlobalKey<FormState>();
 var nameController =  TextEditingController() ;
 var mailController =  TextEditingController() ;
 var passController =  TextEditingController() ;
  var repassController =  TextEditingController() ;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
               children: [
              SizedBox(height:80,),
             Image.asset('assets/images/logo.PNG',),
             SizedBox(height: 10,),
             Text('Sign Up ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
             SizedBox(height: 10,),
              Text('Add Your details to sign up ',style: TextStyle(color:Colors.grey,fontSize: 15,fontWeight: FontWeight.bold)),
    
              SizedBox(height: 60,),
             defaultFormField(
              controller: nameController, 
              
             type: TextInputType.name, 
              validation: (String? value)
                      {
                        value!.isEmpty ? 'Please enter  name': null;
                      }, 
             label: 'User Name',
              prefix: Icons.person,
             ),
             SizedBox(height: 20,),
             defaultFormField(controller: mailController, 
             type: TextInputType.emailAddress, 
              validation: (String? value)
                      {
                        value!.isEmpty ? 'Please enter email': null;
                      }, 
             label: 'Email',
              prefix: Icons.mail,
             ),
             SizedBox(height: 20,),
             defaultFormField(controller: passController, 
             type: TextInputType.emailAddress, 
              validation: (String? value)
                      {
                        value!.isEmpty ? 'Please enter email': null;
                      }, 
             label: 'password',
              prefix: Icons.lock,
             ),
             SizedBox(height: 20,),
             defaultFormField(controller: repassController, 
             type: TextInputType.emailAddress, 
              validation: (String? value)
                      {
                        value!.isEmpty ? 'Please enter email': null;
                      }, 
             label: 'Re-password',
              prefix: Icons.lock,
             ),
             
             SizedBox(height: 40,),
             defaultButton(text: 'Sign Up', function: (){},height: 60,radius: 28,isUpper: false),
             SizedBox(height: 80,),
             Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
        Text(
          'Aleardy have an account?',style: TextStyle(color: Colors.grey)),   
                TextButton(
                onPressed: (){}, 
                child: Text('Login',style: TextStyle(color: defColor),),
                ),
                ],
             ),
    
      
           ],
           
      
          ),
        ),
      ),
    );
  }
}