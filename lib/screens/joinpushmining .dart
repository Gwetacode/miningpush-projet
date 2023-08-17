import 'package:flutter/material.dart';
import 'package:miningpush/constante_data.dart';
import 'package:miningpush/screens/miningbuttom.dart';

class joinpushmining extends StatelessWidget {
  const joinpushmining({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(
          height: 20,
        ),
        Text("Join the Cryptofy and try it yourself..",
            style: TextStyle(
                fontSize: 30,
                color: color1,
                fontWeight: FontWeight.w800)),
        SizedBox(
          height: 20,
        ),
        Text(
          "Let your money work for you with the advanced technologies of the \nCryptofy platform.",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Color.fromARGB(255, 22, 22, 22),
              fontWeight: FontWeight.w400,
              fontSize: 18),
        ),
        SizedBox(
          height: 20,
        ),
        miningbuttom(),
        SizedBox(
          height: 35,
        ),
       
      ],
    );
  }
}

