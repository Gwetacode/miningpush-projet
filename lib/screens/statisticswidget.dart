import 'package:flutter/material.dart';
import 'package:miningpush/constante_data.dart';

import '../models/statisticsdata.dart';

class statisticswidget extends StatelessWidget {
  const statisticswidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
     mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
      /*  Expanded(
          child: ListView.builder(
            itemCount: valeurstatistics.length,
            itemBuilder: (BuildContext context, int index) {
              return statisticnumber();
            },
          ),
        )*/

         Column(
                children: [
                  Text(valeurstatistics[1].datastatistic,
                      style:const TextStyle(
                          fontSize: 40,
                          color: color3,
                          fontWeight: FontWeight.w800)),
                  Text(valeurstatistics[1].type,
                      style:const TextStyle(
                          fontSize: 18,
                          color: color3,
                          fontWeight: FontWeight.w600)),
                ],
              ),
        
        Column(
          children: [
            Text(valeurstatistics[2].datastatistic,
                style:const TextStyle(
                    fontSize: 40,
                    color: color2,
                    fontWeight: FontWeight.w800)),
            Text(valeurstatistics[2].type,
                style:const TextStyle(
                    fontSize: 18,
                    color: color2,
                    fontWeight: FontWeight.w600)),
          ],
        ),
        Column(
          children:  [
            Text(valeurstatistics[3].datastatistic,
                style:const TextStyle(
                    fontSize: 40,
                    color: color2,
                    fontWeight: FontWeight.w800)),
            Text(valeurstatistics[3].type,
                style:const TextStyle(
                    fontSize: 18,
                    color: color2,
                    fontWeight: FontWeight.w600)),
          ],
        ),
        Column(
          children: [
            Text(valeurstatistics[3].datastatistic,
                style:const TextStyle(
                    fontSize: 40,
                    color: color3,
                    fontWeight: FontWeight.w800)),
            Text(valeurstatistics[2].type,
                style:const TextStyle(
                    fontSize: 18,
                    color: color3,
                    fontWeight: FontWeight.w600)),
          ],
        ),
      ],
    );
  }
}

Widget statisticnumber() {
  return Container(
    width: 50,
    color: Colors.red,
    margin: const EdgeInsets.all(10),
    child: Column(
      children: const [
        Text('28,750',
            style: TextStyle(
                fontSize: 40, color: color2, fontWeight: FontWeight.w800)),
        Text('Users',
            style: TextStyle(
                fontSize: 18, color: color2, fontWeight: FontWeight.w600)),
      ],
    ),
  );
}
