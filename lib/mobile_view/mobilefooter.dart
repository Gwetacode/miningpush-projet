import 'package:flutter/material.dart';

class footermobile extends StatelessWidget {
  const footermobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
    image: AssetImage('assets/back.jpg'),
    fit: BoxFit.cover,
    colorFilter: ColorFilter.mode(
        Colors.black.withOpacity(0.6), BlendMode.dstATop),
        
              ),
               borderRadius: BorderRadius.circular(5)
       // color: color1.withOpacity(0.1),
       
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
            children: [
               SizedBox(
                height:15 ,child: Image.asset('assets/miningpush_logo.png')),
                SizedBox(height: 15,),
              SizedBox(
                height: 190,
                child: Image.asset('assets/govuk.png')),
                 SizedBox(height: 15,),
                const Text('60 Mordaunt St, London, United Kingdom,\nSW9 9RB Copyright © 2023. \nAll right reserved.',textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17),
                )
            ],
        ),
          ),
        Column(
          children:const  [
             Text('Partners',
              style: TextStyle(fontWeight: FontWeight.w700,fontSize: 19),
             
             ),
             /*
            SizedBox(
              height: 30,
              child: Image.asset('assets/bitfarms.png',)),
              SizedBox(height: 20,),
            SizedBox(
              height: 30,
              child: Image.asset('assets/coinpayments.png')),
              SizedBox(height: 20,),
              SizedBox(
              height: 30,
              child: Image.asset('assets/trustpilot.png')),
              SizedBox(height: 20,),
              SizedBox(
              height: 30,
              child: Image.asset('assets/salvadore.png')),*/
           // Image.asset('name'),
           // Image.asset('name'),
             ],
        ),
        Column(
          children:const [
            Text('Pages',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 19),),
             SizedBox(height: 25,),
            Text('Home' , style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17),),
             SizedBox(height: 15,),
            Text('FAQ', style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17),),
             SizedBox(height: 15,),
            Text('Login', style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17),),
             SizedBox(height: 15,),
            Text('Sign Up', style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17),),
              SizedBox(height: 35,),
            Text('Telegram Support', style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17),),
              SizedBox(height: 15,),
            Text('Telegram Group', style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17),),
        
             ],
        ),
        
        
        ],
      ),
    );
  }
}
