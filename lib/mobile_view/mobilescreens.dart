import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:miningpush/constante_data.dart';
import 'package:miningpush/mobile_view/mobilefooter.dart';
import 'package:miningpush/mobile_view/statisticmobile.dart';
import 'package:miningpush/models/faq_data_models.dart';
import 'package:miningpush/screens/desktoplogo.dart';
import 'package:miningpush/screens/faqwidget.dart';
import 'package:miningpush/screens/joinpushmining%20.dart';
import 'package:miningpush/screens/statisticswidget.dart';
import 'package:miningpush/screens/tableautransaction.dart';

import '../screens/Card_Design.dart';
import '../screens/morefaq.dart';
import '../tablette_view/MiningInfos_tablet.dart';
import 'MiningInfos_mobile.dart';

class Mobilescreens extends StatelessWidget {
  const Mobilescreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.9),
              image: DecorationImage(
                image: AssetImage('assets/back.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.6), BlendMode.dstATop),
              )),
          alignment: Alignment.topCenter,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Column(children: [
            Container(
              // alignment: Alignment.topCenter,
              padding: const EdgeInsets.symmetric(horizontal: 0),
              height: 40,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.menu,
                        size: 30,
                      )),
                  const Center(
                      child: Desktoplogo(
                          taille: 25, imagelogo: 'assets/miningpush_logo.png')),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                miningInfos_mobile(),
                SizedBox(height: 5),
              ],
            ),
            Container(
              color: color1.withOpacity(0.1),
              // width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: SizedBox(
                        width: 300,
                        child: Image.asset('assets/mine_bitcoin.png')),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                      //width: 500,
                      child: Text(
                    MineText,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ))
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              //margin: const EdgeInsets.all(30.0),
              color: color1.withOpacity(0.1),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Card_design(
                      title: "Easy",
                      texte:
                          "with a simple interface, crypto mining is easy for everyone",
                      imagecard: "image_cards1.png"),
                  SizedBox(
                    height: 17,
                  ),
                  Card_design(
                      title: "Safe",
                      texte: "Encryption of both payment and personal data",
                      imagecard: "image_cards2.png"),
                  SizedBox(
                    height: 17,
                  ),
                  Card_design(
                      title: "Stable",
                      texte:
                          "With a simple interface ,Crypto mining is easy for everyone",
                      imagecard: "image_cards3.png"),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(statistitics,
                style: TextStyle(
                    fontSize: 30, color: color1, fontWeight: FontWeight.w800)),
                     const SizedBox(
                  height: 20,
                ),
                const statisticmobile(),
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
               const Center(
                  child: Text(
                    faqtxt,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromARGB(255, 22, 22, 22),
                        fontWeight: FontWeight.w400,
                        fontSize: 18),
                  ),
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
                const SizedBox(
                  height: 20,
                ),
                const morefaqq(),
                 const joinpushmining(),
                 const footermobile(),

          ]),
        ),
      ),
    );
  }
}
