import 'package:flutter/material.dart';
class Desktoplogo extends StatelessWidget {
  const Desktoplogo({
    Key? key,required this.taille,required this.imagelogo
  }) : super(key: key);
 final double taille;
  final String imagelogo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: SizedBox(
        
        height: taille,
        child: Image.asset(imagelogo,)),
    );
  }
}
