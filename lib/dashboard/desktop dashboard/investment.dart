import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:miningpush/dashboard/constantsdashboard.dart';
import 'package:miningpush/dashboard/dashboardmenu.dart';

import '../models/packageinv.dart';


class Investment extends StatelessWidget {
  const Investment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Expanded(
            child: dashboardmenu(),
          ),
          Expanded(
              flex: 5,
              child: SafeArea(
                  child: SingleChildScrollView(
                padding: const EdgeInsets.all(defaultpadding),
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: SecondaryColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Center(
                        child: Text(
                          "Investment Plan",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 18),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3, crossAxisSpacing: 10),
                          shrinkWrap: true,
                          itemCount: valeurpackage.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              padding: const EdgeInsets.all(defaultpadding),
                              decoration: const BoxDecoration(
                                color: SecondaryColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const Text(
                                    "Basic",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 30,
                                      color: Color(0xFF26E5FF),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children:  [
                                      Text(
                                        valeurpackage[index].pourcentage,
                                         style:const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 20),
                                      ),
                                      Text(
                                         valeurpackage[index].validite,
                                        style:const  TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 20),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                     const  Text(
                                        "Min Deposit",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 18),
                                      ),
                                      Text(
                                         valeurpackage[index].minimun,
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 18),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children:  [
                                      const Text(
                                        "Max Deposit",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 18),
                                      ),
                                      Text(
                                         valeurpackage[index].maximun,
                                        style:const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 18),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: const [
                                      Text(
                                        "Capital Return",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 18),
                                      ),
                                      Text(
                                        "Yes",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 18),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: const [
                                      Text(
                                        "Total Return",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 18),
                                      ),
                                      Text(
                                        "20%",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 18),
                                      ),
                                    ],
                                  ),
                                  ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            Color.fromARGB(255, 99, 96, 96),
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text("Choose this plan"),
                                      )),
                                ],
                              ),
                            );
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ))),
        ]),
      ),
    );
  }
}