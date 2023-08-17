import 'package:flutter/material.dart';
import 'package:miningpush/dashboard/mobile%20dashboard/dashboardMobile.dart';

import '../responsive_layout/responsive_layout.dart';
import 'desktop dashboard/DashboardDesktop.dart';
import 'tablette dashboard/DashboardTablette.dart';
class dashboard_Responsive extends StatelessWidget {
  const dashboard_Responsive({super.key});

  @override
  Widget build(BuildContext context) {
     return const ResponsiveLayout(mobilescreens: dashboardmobile(), tablettescreens:dashboardmenutablet(), desktopscreens: Dashboardmenu());
  }
}


 /**
  * 



  return     LayoutBuilder(builder: (context,tailleEcran){
      if(tailleEcran.maxWidth<mobilesize){
          return Container();
      }else if(tailleEcran.maxWidth <tabletesize){
          return const dashboardmenutablet();
      }else{
         return const Dashboardmenu();
      }
    });
  */