import 'package:flutter/material.dart';

const textInputDecoration = InputDecoration(
  filled: true,
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.white,
      width: 2.0,
    ),
    // borderRadius: BorderRadius.circular(30.0),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.black,
      width: 2.0,
    ),
  ),
  fillColor: Colors.white,
);

const decorationImage = BoxDecoration(
  image: DecorationImage(
    colorFilter: ColorFilter.mode(Colors.black, BlendMode.color),
    image: AssetImage('assets/login.jpg'),
    fit: BoxFit.cover,
  ),
);
