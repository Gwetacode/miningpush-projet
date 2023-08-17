import 'package:flutter/material.dart';

import '../constante_data.dart';
import '../screens/miningbuttom.dart';

class miningInfos_mobile extends StatelessWidget {
  const miningInfos_mobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
      //mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 24,
        ),
        const Text("Mining push Invest \nRightNow",
            style: TextStyle(
                fontWeight: FontWeight.w800, height: 1.1, fontSize: 45)),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
            height: 350,
            child: Image.asset('assets/image_phone_presentation.png')),
        const SizedBox(
          height: 20,
        ),
        const miningbuttom(),
         const SizedBox(
          height: 20,
        ),
        const Center(
          child: Text(text1,
              style: TextStyle(
                  fontWeight: FontWeight.w400, height: 1.5, fontSize: 17)),
        ),
      ],
    );
  }
}
