import 'package:flutter/material.dart';
import 'dashboard/dashboardResponsive.dart';
import 'homepage.dart';
import 'sign design/signdesktop.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      debugShowCheckedModeBanner: false,
      title: 'Miningpush',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
          fontFamily: 'Nunito Sans',  
        ),
        primarySwatch: Colors.blue,
      ),
      home:const dashboard_Responsive()
      //Loginlayout(),
      //const  MyHomePage(),
      //dashboard_Responsive
    );
  }
}