import 'package:flutter/material.dart';

class navtext extends StatelessWidget {
  const navtext({
    Key? key,required this.textes
  }) : super(key: key);
  final String textes;

  @override
  Widget build(BuildContext context) {
    return Text(textes,style: const TextStyle(fontSize: 17),);
  }
}