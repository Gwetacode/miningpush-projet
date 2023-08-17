import 'package:flutter/material.dart';
import 'package:miningpush/constante_data.dart';
class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key,required this.mobilescreens,required this.tablettescreens,required this.desktopscreens});
  final Widget mobilescreens,tablettescreens,desktopscreens;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,tailleEcran){
      if(tailleEcran.maxWidth<mobilesize){
          return mobilescreens;
      }else if(tailleEcran.maxWidth <tabletesize){
          return tablettescreens;
      }else{
         return desktopscreens;
      }
    });
  }
}