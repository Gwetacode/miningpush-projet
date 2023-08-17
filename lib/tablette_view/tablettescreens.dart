import 'package:flutter/material.dart';
import 'package:miningpush/models/faq_data_models.dart';
import 'package:miningpush/screens/Card_Design.dart';
import 'package:miningpush/screens/faqwidget.dart';
import 'package:miningpush/screens/footerdesktop.dart';
import 'package:miningpush/screens/joinpushmining%20.dart';
import 'package:miningpush/screens/morefaq.dart';
import 'package:miningpush/screens/statisticswidget.dart';
import 'package:miningpush/screens/tableautransaction.dart';

import '../constante_data.dart';
import '../desktop_view/MiningInfos_desktop.dart';
import '../screens/navigationapp.dart';
import 'MiningInfos_tablet.dart';
class Tablettescreens extends StatelessWidget {
  const Tablettescreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.topCenter,
          padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 20),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1200),
            child: Column(
              children: [
                const Navigationdesktop(sizeboxheight: 15, taillelogo: 15),
                const SizedBox(height: 70),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [  
                     const MiningInfos_tablet(),
                    const SizedBox(height: 5),
                    SizedBox(
                        height: 300,
                        child: Image.asset('assets/image_phone_presentation.png')), 
                  ],
                ),
                 Container(
                  color: color1.withOpacity(0.1),
                  width: double.infinity,
                  margin: const EdgeInsets.all(30.0),
                 /* decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 15.0, // soften the shadow
                        spreadRadius: 5.0, //extend the shadow
                        offset: Offset(
                          5.0, // Move to right 5  horizontally
                          5.0, // Move to bottom 5 Vertically
                        ),
                      )
                    ],
                  ),*/
                  
                  //color: Colors.red,
                  //width: 1000,
                  //alignment: Alignment.topCenter,
                  child: Row(
                   // mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: SizedBox(
                           // width: 300,
                            child: Image.asset('assets/mine_bitcoin.png')),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Expanded(
                        child:  SizedBox(
                            //width: 500,
                            child: Text(
                              MineText,
                              textAlign: TextAlign.center,
                            )),
                      )
                    ],
                  ),
                ),
                Container(
                   margin: const EdgeInsets.all(30.0),
                   color: color1.withOpacity(0.1),
                    padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                      //crossAxisAlignment: CrossAxisAlignment.center,
                   children:const [
                      Expanded(
                        child: Card_design(
                            title: "Easy",
                            texte:
                                "with a simple interface, crypto mining is easy for everyone",
                            imagecard: "image_cards1.png"),
                      ),
                      SizedBox(
                        width: 17,
                      ),
                      Expanded(
                        child: Card_design(
                            title: "Safe",
                            texte:
                               "Encryption of both payment and personal data",
                            imagecard: "image_cards2.png"),
                      ),
                      SizedBox(
                        width: 17,
                      ),
                      Expanded(
                        child: Card_design(
                            title: "Stable",
                            texte:
                                "With a simple interface ,Crypto mining is easy for everyone",
                            imagecard: "image_cards3.png"),
                      ),

                    ],
                  ),
                  
                ),
                
                //carte creation fin
                const SizedBox(
                  height: 20,
                ),
                const Text(statistitics,
                    style: TextStyle(
                        fontSize: 30,
                        color: color1,
                        fontWeight: FontWeight.w800)),
                const SizedBox(
                  height: 20,
                ),
                const statisticswidget(),
                const SizedBox(
                  height: 20,
                ),
                 const Text(recentTrasanctions,
                    style: TextStyle(
                        fontSize: 30,
                        color: color1,
                        fontWeight: FontWeight.w800)),
                const SizedBox(
                  height: 20,
                ),
                const tableautransaction(),
                const SizedBox(
                  height: 20,
                ),
                const Text(faq,
                    style: TextStyle(
                        fontSize: 30,
                        color: color1,
                        fontWeight: FontWeight.w800)),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  faqtxt,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromARGB(255, 22, 22, 22),
                      fontWeight: FontWeight.w400,
                      fontSize: 18),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 430,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: advantageContentfaq.length,
                        itemBuilder: (BuildContext context, int index) {
                          return faqwidget(
                              contentfaq: advantageContentfaq[index]);
                        },
                      ),
                    ),
                  ],
                ),
                 const morefaqq(),
                 const joinpushmining(),
                const footerdesktop(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}