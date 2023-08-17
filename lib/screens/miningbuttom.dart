import 'package:flutter/material.dart';

import '../constante_data.dart';
class miningbuttom extends StatefulWidget {
  const miningbuttom({
    Key? key,
  }) : super(key: key);

  @override
  State<miningbuttom> createState() => _miningbuttomState();
}

class _miningbuttomState extends State<miningbuttom>with TickerProviderStateMixin {
  late AnimationController controller;
  @override

  Widget build(BuildContext context) {
    double turns = 0.0;

  void _changeRotation() {
    setState(() => turns += 1.0 / 8.0);
  }
    return Container(
        width: 250,
        decoration: BoxDecoration(
            color: color1,
            borderRadius: BorderRadius.circular(45)),
        //padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        //padding: const EdgeInsets.all(10),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 25,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: AnimatedRotation(
                      turns: turns,
            duration: const Duration(seconds: 50),
                      child: Image.asset(
                          'assets/parametre_start.png'),
                    ),
                  )),
              const Text(
                'Start mining now',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
              CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 25,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child:
                        Image.asset('assets/start_icons.png'),
                  )),
            ],
          ),
        ));
  }
}
