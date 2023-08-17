import 'package:flutter/material.dart';
import 'package:miningpush/dashboard/constantsdashboard.dart';
import 'package:miningpush/dashboard/dashboardmenu.dart';
import 'package:miningpush/dashboard/screens%20dashboard/RecordDataMninig.dart';

import '../screens dashboard/retraitboxscreen.dart';

class withdrawdesktop extends StatelessWidget {
  const withdrawdesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor,
        body: SafeArea(
            child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Expanded(
                //prends la valeur par default de 1 pour flex donc 1/6
                child: dashboardmenu()),
            Expanded(
                //on prends ici les 5/6 de l'espace disponible
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
                              "Withdraw Wallet Settings And Withdraw History",
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
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                flex: 5,
                                child: Column(
                                  children: [
                                    boxwithdraw(),
                                    const SizedBox(height: 20,),
                                    Container(
                                      //height:,
                                      width: double.infinity,
                                      padding:
                                          const EdgeInsets.all(defaultpadding),
                                      decoration: BoxDecoration(
                                        color: SecondaryColor,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "Recent retrait",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          SizedBox(
                                            width: double.infinity,
                                            child: DataTable(columns: const [
                                              DataColumn(
                                                  label: Text(
                                                "STATUS",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              )),
                                              DataColumn(
                                                  label: Text(
                                                "DATE",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              )),
                                              DataColumn(
                                                  label: Text(
                                                "ADRESS",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              )),
                                              DataColumn(
                                                  label: Text(
                                                "AMOUNT",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              )),
                                            ], rows: [
                                               listeretraitcode(
                                                "win",
                                                const Color(0xFF26E5FF),
                                              ),
                                              listeretraitcode(
                                                "win",
                                                const Color(0xFF26E5FF),
                                              ),
                                              listeretraitcode("waiting",
                                                  const Color(0xFFFFCF26)),
                                              listeretraitcode(
                                                  "echecs", Colors.red),
                                              listeretraitcode(
                                                  "echecs", Colors.red),
                                              listeretraitcode("waiting",
                                                  const Color(0xFFFFCF26)),
                                              listeretraitcode(
                                                "win",
                                                const Color(0xFF26E5FF),
                                              ),
                                              listeretraitcode(
                                                "win",
                                                const Color(0xFF26E5FF),
                                              ),
                                            ]),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                )),
                            const SizedBox(
                              width: defaultpadding,
                            ),
                            const Expanded(flex: 2, child: RecordDataMining()),
                          ],
                        )
                      ],
                    ),
                  ),
                ))
          ],
        )));
  }

  DataRow listeretraitcode(String statut, Color couleur) {
    return DataRow(cells: [
      DataCell(Row(
        children: [
          CircleAvatar(
            backgroundColor: couleur,
            radius: 8,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            statut,
            style: TextStyle(
                fontStyle: FontStyle.italic,
                color: couleur,
                fontWeight: FontWeight.w900),
          ),
        ],
      )),
      const DataCell(Text(
        "01/04/2023 10:04 PM",
        style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.white,
            fontWeight: FontWeight.w600),
      )),
      const DataCell(Text(
        "200ASHD FHJSSJJDFDJSFSDNMBFSDJHFD",
        style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.white,
            fontWeight: FontWeight.w600),
      )),
      const DataCell(Text(
        "200.48\$",
        style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.white,
            fontWeight: FontWeight.w600),
      ))
    ]);
  }
}


