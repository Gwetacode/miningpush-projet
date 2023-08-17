import 'package:flutter/material.dart';
import 'package:miningpush/responsive_layout/responsive_layout.dart';
import 'package:miningpush/tablette_view/tablettescreens.dart';

import 'desktop_view/desktopscreens.dart';
import 'mobile_view/mobilescreens.dart';
 class MyHomePage extends StatelessWidget {
   const MyHomePage({super.key});
 
   @override
   Widget build(BuildContext context) {
     return const ResponsiveLayout(mobilescreens: Mobilescreens(), tablettescreens: Tablettescreens(), desktopscreens: Desktopscreens());
   } 
 }