import 'package:flutter/material.dart';
import 'package:miningpush/dashboard/constantsdashboard.dart';

import '../../constante_data.dart';

class boxwithdraw extends StatefulWidget {
  const boxwithdraw({
    Key? key,
  }) : super(key: key);

  @override
  State<boxwithdraw> createState() => _boxwithdrawState();
}

class _boxwithdrawState extends State<boxwithdraw> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AutovalidateMode _autoValidate = AutovalidateMode.disabled;
  String? _wallet;
  String? selectedValue = "USDT-TRC20(Network:tron";

  // String? _mobile;
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
    return Container(
      width: double.infinity,
      //height: 350,
      padding: const EdgeInsets.all(defaultpadding),
      decoration: BoxDecoration(
        color: SecondaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Form(
        key: _formKey,
        autovalidateMode: _autoValidate,
        child: Column(
          children: [
            // liste deroulante
            DropdownButtonFormField(
              style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
              disabledHint: const Text("Choose a payment type"),
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: bgColor, width: 2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  filled: true,
                  fillColor: bgColor),
              dropdownColor: bgColor,
              value: selectedValue,
              onChanged: (String? newValue) {
                setState(() {
                  selectedValue = newValue!;
                });
              },
              items: dropdownItems,
            ),
            const SizedBox(
              height: 15,
            ),
            // adresse de retrait
            TextFormField(
              style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
              decoration: InputDecoration(
                filled: true,
                fillColor: bgColor,
                labelText: 'Enter Your Wallet adress',
                labelStyle: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: bgColor, width: 2),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              keyboardType: TextInputType.text,
              validator: validatewallet,
              onSaved: (String? val) {
                _wallet = val;
              },
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
              decoration: InputDecoration(
                filled: true,
                fillColor: bgColor,
                labelText: 'Input Amount',
                labelStyle: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: bgColor, width: 2),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              keyboardType: TextInputType.text,
              validator: validatewallet,
              onSaved: (String? val) {
                _wallet = val;
              },
            ),

            const SizedBox(
              height: 50.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: _validateInputs,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Withdraw"),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor:const Color.fromARGB(255, 177, 50, 41),
                    ),
                    child:const Padding(
                      padding:  EdgeInsets.all(8.0),
                      child:Text("min withdrawal \$20"),
                    )),
              ],
            )
            /* GestureDetector(
              onTap: _validateInputs,
              child: Container(
                decoration: BoxDecoration(
                    color: color1, borderRadius: BorderRadius.circular(8)),
                padding:const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                child:const Text(
                  'Validate',
                  style:
                      TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
                ),
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}

List<DropdownMenuItem<String>> get dropdownItems {
  List<DropdownMenuItem<String>> menuItems = const [
    DropdownMenuItem(
      value: "USDT-TRC20(Network:tron",
      child: Text("USDT-TRC20(Network:tron)"),
    ),
    DropdownMenuItem(
      value: "BTC(Network:Bitcoin)",
      child: Text("BTC(Network:Bitcoin)"),
    ),
    DropdownMenuItem(
      value: "LTC(Network:Litecoin)",
      child: Text("LTC(Network:Litecoin)"),
    ),
    DropdownMenuItem(
      value: "ETH(Network:Ethereum)",
      child: Text("ETH(Network:Ethereum)"),
    ),
    DropdownMenuItem(
      value: "eee",
      child: Text("BCH(Network:Bitcoin Cash)"),
    ),
  ];
  return menuItems;
}

String? validatewallet(String? value) {
  if (value!.isEmpty) {
    return 'Name cannot be empty';
  }
  if (value.length < 3) {
    return 'Name must be more than 2 charater';
  } else {
    return null;
  }
}
