// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:miningpush/constante_data.dart';
import 'package:miningpush/screens/navigationapp.dart';

//final _formKey = GlobalKey<FormState>();

class Loginlayout extends StatefulWidget {
  const Loginlayout({super.key});

  @override
  State<Loginlayout> createState() => _LoginlayoutState();
}

class _LoginlayoutState extends State<Loginlayout> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AutovalidateMode _autoValidate = AutovalidateMode.disabled;
  String? _name;
  // String? _mobile;
  String? _email;

  void _validateInputs() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
    } else {
      setState(() {
        _autoValidate = AutovalidateMode.always;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.topCenter,
        decoration: BoxDecoration(
            //color: Colors.white.withOpacity(0.9),
            image: DecorationImage(
          image: AssetImage('assets/back.jpg'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
              Color.fromARGB(255, 255, 255, 255).withOpacity(0.2),
              BlendMode.dstATop),
        )),
        child: Column(
          children: [
            const Navigationdesktop(sizeboxheight: 30, taillelogo: 25),
            //SizedBox(height: 70),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //const Text('LOG IN'),
                  const SizedBox(height: 70,),
                  SizedBox(
                    width: 200,
                    child: Image.asset("assets/login111.png")),
                  const Text('Log in to your miningpush account',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 30,color: color1),),
                  const SizedBox(height: 40,),
                  Form(
                    key: _formKey,
                    autovalidateMode: _autoValidate,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: <Widget>[
                            Row(
                              children: [
                                SizedBox(
                                  height: 100,
                                  width: 250,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      labelText: 'Enter Your Email',
                                      border: OutlineInputBorder(
                                        borderSide:const BorderSide(
                                          color: Colors.black,
                                          width: 1.0,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    keyboardType: TextInputType.text,
                                    validator: validateName,
                                    onSaved: (String? val) {
                                      _email = val;
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                SizedBox(
                                  height: 100,
                                  width: 250,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      labelText: 'Enter Your Password',
                                      border: OutlineInputBorder(
                                        borderSide:const BorderSide(
                                          color: Colors.black,
                                          width: 1.0,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    keyboardType: TextInputType.emailAddress,
                                    validator: validateEmail,
                                    onSaved: (String? val) {
                                      _name = val;
                                    },
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 0.0,
                            ),
                            GestureDetector(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: color1,
                                  borderRadius: BorderRadius.circular(8)
                                ),
                                 padding: EdgeInsets.symmetric(horizontal: 100,vertical: 20),
                                  child:  Text('Validate',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
                              ),
                              onTap:  _validateInputs,
                            ),
                          /* OutlinedButton(
                          
                             onPressed:
                             child:const Padding(
                               padding:  EdgeInsets.symmetric(horizontal: 100,vertical: 30), 
                               child:  Text('Validate'),
                             ),
                           )*/
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

String? validateName(String? value) {
  if (value!.isEmpty) {
    return 'Name cannot be empty';
  }
  if (value.length < 3) {
    return 'Name must be more than 2 charater';
  } else {
    return null;
  }
}

/*
String? validateMobile(String? value) {
  if (value!.isEmpty) {
    return 'Phone number cannot be empty';
  }
  if (value.length != 10) {
    return 'Mobile Number must be of 10 digit';
  } else {
    return null;
  }
}
*/
String? validateEmail(String? value) {
  String pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = RegExp(pattern);
  if (value!.isEmpty) {
    return 'Email cannot be empty';
  }
  if (!regex.hasMatch(value)) {
    return 'Enter Valid Email';
  } else {
    return null;
  }
}
