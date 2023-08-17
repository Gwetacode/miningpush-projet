import 'package:flutter/material.dart';
import 'package:miningpush/constante_data.dart';

class morefaqq extends StatelessWidget {
  const morefaqq({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
      decoration: BoxDecoration(
          color: color1, borderRadius: BorderRadius.circular(25)),
      child: const Text(
        'More Faq',
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w600),
      ),
    );
  }
}
