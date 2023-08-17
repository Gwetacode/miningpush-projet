import 'package:flutter/material.dart';

import '../constante_data.dart';
import '../screens/miningbuttom.dart';
class MiningInfos_desktop extends StatelessWidget {
  const MiningInfos_desktop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children:const [
        Text(text1,
            style: TextStyle(
                fontWeight: FontWeight.w400,
                height: 1.5,
                fontSize: 15)),
        SizedBox(
          height: 24,
        ),
        Text(titre,
            style: TextStyle(
                fontWeight: FontWeight.w800,
                height: 0.9,
                fontSize: 70)),
         SizedBox(
          height: 20,
        ),
        miningbuttom()
      ],
    );
  }
}
