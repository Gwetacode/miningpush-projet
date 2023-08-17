import 'package:flutter/material.dart';
import 'package:miningpush/constante_data.dart';


class Card_design extends StatelessWidget {
  const Card_design({
    Key? key,required this.title,required this.texte,required this.imagecard
  }) : super(key: key);
  final String title,texte,imagecard;

  @override
  Widget build(BuildContext context) {
    return Container(
     //expanded retirer ici 
      padding: const EdgeInsets.all(20),
      //width: 325,
      height: 450,
      //margin: const EdgeInsets.all(10.0),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(15.0),
        ),
        color: Colors.white,
        boxShadow: [
         /* BoxShadow(
            color: Colors.grey,
            blurRadius: 15.0, // soften the shadow
            spreadRadius: 5.0, //extend the shadow
            offset: Offset(
              5.0, // Move to right 5  horizontally
              5.0, // Move to bottom 5 Vertically
            ),
          )*/
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(
            child: SizedBox(
              width:140,
              child: Image.asset(imagecard,)),
          ),
          Text(title,style: TextStyle(fontWeight: FontWeight.bold,fontSize:18),),
          Text(texte),
          Text('Learn More',style: TextStyle(color: color1,fontWeight: FontWeight.w700),),
        ],
      ),
    );
  }
}
