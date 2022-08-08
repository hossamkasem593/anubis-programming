import 'package:flutter/material.dart';

Widget defaultFormField({
  required  TextEditingController  controller,
   hint = '',
   ValueChanged<String>? onChange,
    ValueChanged<String>? onSubmit,
  required  TextInputType type,
  Function()? onCh ,
  required FormFieldValidator <String>? validation,
  isPassword = false,
  @required String? label,
  @required IconData? prefix,
  GestureTapCallback? onTap,
  IconData? subfix,
  VoidCallback? subfixPressed,
  bool isClickable = true,
  int? lins,
  Color fillColor = Colors.white70,
  double radius = 28.0 ,
}) =>  
      TextFormField(
                
        controller: controller,
        keyboardType: type,
        obscureText: isPassword,
        onTap: onTap,
        enabled:isClickable,
        validator:validation,
         onChanged: onChange,
       onFieldSubmitted: onSubmit,
       maxLines: lins,
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: Icon(prefix) ,
          suffixIcon:subfix !=null? IconButton(icon:Icon(subfix),onPressed: subfixPressed,): null,
          hintText: hint,
          fillColor:fillColor ,
          filled: true,
          border:  OutlineInputBorder(
           borderSide: const BorderSide(color: Colors.blueGrey,width: 2.0),
               borderRadius: BorderRadius.circular(radius),
          

          ),
          
          
          
             ),
          );
      