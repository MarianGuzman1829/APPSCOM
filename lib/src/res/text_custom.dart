import 'package:flutter/material.dart';
import'package:sizer/sizer.dart';


Text textNegro(String texto) {
  return Text(
    texto,
    style: TextStyle(
      color: Colors.black,
      fontSize: 15.sp,
    ),
  );
}

Text textAzul(String texto) {
  return Text(
    texto,
    style: TextStyle(
      color: const Color.fromARGB(255, 44, 94, 157),
      fontSize: 15.sp,
      fontWeight: FontWeight.bold
    ),
  );
}