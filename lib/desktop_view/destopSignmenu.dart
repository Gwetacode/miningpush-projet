import 'package:flutter/material.dart';
import 'package:miningpush/constante_data.dart';


class DestopmenuSign extends StatelessWidget {
  const DestopmenuSign({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
       children: [
    const Text('Log In'),
    const SizedBox(
      width: 20,
    ),
    Container(
        decoration: BoxDecoration(
            color: color1,
            borderRadius: BorderRadius.circular(5)),
        padding: const EdgeInsets.symmetric(
            horizontal: 20, vertical: 15),
        child: const Text(
          'Sign UP',
          style: TextStyle(color: Colors.white),
        ))
       ],
     );
  }
}

