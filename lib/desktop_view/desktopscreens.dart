import 'dart:js_util';
import 'package:flutter/material.dart';
import 'package:miningpush/constante_data.dart';
import 'package:miningpush/models/advantages_models_data.dart';
import 'package:miningpush/models/transactions_models_data.dart';
import 'package:miningpush/screens/Card_Design.dart';
import 'package:miningpush/screens/footerdesktop.dart';
import 'package:miningpush/screens/joinpushmining%20.dart';
import 'package:miningpush/screens/miningbuttom.dart';
import 'package:miningpush/screens/morefaq.dart';
import 'package:miningpush/screens/statisticswidget.dart';
import '../models/faq_data_models.dart';
import '../screens/faqwidget.dart';
import '../screens/tableautransaction.dart';
import 'MiningInfos_desktop.dart';
import '../screens/navigationapp.dart';


class Desktopscreens extends StatelessWidget {
  const Desktopscreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.9),
             /*image: DecorationImage(
                image: AssetImage('assets/back.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.6), BlendMode.dstATop),
              )*/
          ),
          alignment: Alignment.topCenter,
          padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 20),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1200),
            child: Column(
              children: [
                const Navigationdesktop(sizeboxheight: 30, taillelogo: 25),
                const SizedBox(height: 70),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const MiningInfos_desktop(),
                    const SizedBox(height: 5),
                    SizedBox(
                        height: 400,
                        child:
                            Image.asset('assets/image_phone_presentation.png'))
                  ],
                ),
                Container(
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
                  //color: color1.withOpacity(0.1),
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                          width: 300,
                          child: Image.asset('assets/mine_bitcoin.png')),
                      const SizedBox(
                        width: 30,
                      ),
                      const Center(
                        child: SizedBox(
                            width: 500,
                            child: Text(
                              MineText,
                              textAlign: TextAlign.center,
                            )),
                      )
                    ],
                  ),
                ),
                //carte creation debut
                Container(
                  margin: const EdgeInsets.all(30.0),
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
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
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
                      )
                    ],
                  ),
                  /**
                   * 
                   *  child: ListView.builder(itemCount: datamodelslist.length,itemBuilder: ((BuildContext context, index) {
                    return Card_design();
                  }),)
                   * 
                   */
                )
                //carte creation fin
                ,
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
                //faqwidget(),
                //faqwidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
