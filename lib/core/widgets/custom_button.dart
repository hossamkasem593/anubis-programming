import 'package:flutter/material.dart';
import 'package:signup/core/constants.dart';

Widget defaultButton({
  double width = double.infinity,
  double height = 40.0,
  double radius = 0,
  required String? text,
  bool isUpper = true,
  Color back = defColor,
  required Function() function,
}) =>
    Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: back,
        borderRadius: BorderRadius.circular(
          radius,
        ),
      ),
      child: MaterialButton(
        onPressed: function,
        child: Text(
          isUpper ? text!.toUpperCase():text!,
          style:const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );