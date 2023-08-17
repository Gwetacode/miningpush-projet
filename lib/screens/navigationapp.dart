import 'package:flutter/material.dart';
import 'package:miningpush/screens/desktoplogo.dart';
import '../desktop_view/destopSignmenu.dart';
import '../desktop_view/navtext.dart';


class Navigationdesktop extends StatelessWidget {
  const Navigationdesktop({
    Key? key, required this.sizeboxheight,required this.taillelogo
  }) : super(key: key);
  final double sizeboxheight,taillelogo;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
           Desktoplogo(taille: taillelogo, imagelogo: 'assets/miningpush_logo.png'),
          Row(
            children: [
             const navtext(textes: 'Home'),
              SizedBox(
                width: sizeboxheight,
              ),
               const navtext(textes: 'Affiliate Program'),        
              SizedBox(
                width: sizeboxheight,
              ),
               const navtext(textes: 'About Us'),
              SizedBox(
                width: sizeboxheight,
              ),
               const navtext(textes: 'FAQ'),
              SizedBox(
                width: sizeboxheight,
              ),
               const navtext(textes: 'Support'),
              SizedBox(
                width: sizeboxheight,
              ),
            ],
          ),
         const DestopmenuSign(),
        ],
      ),
    );
  }
}
