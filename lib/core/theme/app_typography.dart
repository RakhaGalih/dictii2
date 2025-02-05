import 'package:flutter/material.dart';  
  
extension AppTypographyExt on BuildContext {  
  AppTypography get at => const AppTypography();  
}  
  
class AppTypography {  
  const AppTypography();  
  
  final TextStyle light = const TextStyle(  
    fontWeight: FontWeight.w300,  
    fontFamily: 'Poppins',  
    fontSize: 16,
  );  
  
  final TextStyle regular = const TextStyle(  
    fontWeight: FontWeight.w400,  
    fontFamily: 'Poppins',  
    fontSize: 16,  
  );  
  
  final TextStyle medium = const TextStyle(  
    fontWeight: FontWeight.w500,  
    fontFamily: 'Poppins',  
    fontSize: 16,  
  );  
  
  final TextStyle semiBold = const TextStyle(  
    fontWeight: FontWeight.w600,  
    fontFamily: 'Poppins',  
    fontSize: 16,  
  );  
  
  final TextStyle bold = const TextStyle(  
    fontWeight: FontWeight.w700,  
    fontFamily: 'Poppins',  
    fontSize: 16,  
  );  
}  
