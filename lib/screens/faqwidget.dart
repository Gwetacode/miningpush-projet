import 'package:flutter/material.dart';

import '../constante_data.dart';
import '../models/faq_data_models.dart';

class faqwidget extends StatelessWidget {
  const faqwidget({
    required this.contentfaq,
    Key? key,
  }) : super(key: key);
  final Faq contentfaq;

  @override
  Widget build(BuildContext context) {
    return Card(
        color: color1,
        child: ExpansionTile(
          trailing: const Icon(
            Icons.keyboard_arrow_down,
            size: 20,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          title: Text(
            contentfaq.questions,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18),
          ),
          childrenPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          children: [
          const Divider(
            thickness: 5,
            color: Colors.white,
            height: 20,
           ),
           /* const VerticalDivider(
              color: Color.fromARGB(255, 255, 0, 0), //color of divider
             //width: 40, //width space of divider
              thickness: 40, //thickness of divier line
              //indent: 2, //Spacing at the top of divider.
              //endIndent: 2, //Spacing at the bottom of divider.
            ),*/
            Text(
              contentfaq.response,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 18),
            ),
          ],
        ));
  }
}
