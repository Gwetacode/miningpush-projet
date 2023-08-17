import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:miningpush/dashboard/constantsdashboard.dart';
import 'package:miningpush/dashboard/dashboardmenu.dart';
import 'package:miningpush/dashboard/models/packageinv.dart';
import 'package:miningpush/dashboard/screens%20dashboard/RecordDataMninig.dart';

class Dashboardmenu extends StatelessWidget {
  const Dashboardmenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor,
        body: SafeArea(
            child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Expanded(
                //prends la valeur par default de 1 pour flex donc 1/6
                child: dashboardmenu()),
            Expanded(
                //on prends ici les 5/6 de l'espace disponible
                flex: 5,
                child: dashboradbody())
          ],
        )));
  }
}

class dashboradbody extends StatelessWidget {
  const dashboradbody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultpadding),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color:SecondaryColor,
                  borderRadius: BorderRadius.circular(8)),
              height: 50,
              width: double.infinity,
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
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4, crossAxisSpacing: 10),
                          shrinkWrap: true,
                          itemCount: 4,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                                padding: const EdgeInsets.all(defaultpadding),
                                decoration: const BoxDecoration(
                                  color: SecondaryColor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                              color:
                                                  primaryColor.withOpacity(0.1),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(10))),
                                        ),
                                        const Icon(
                                          Icons.more_vert,
                                          color: Colors.white54,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 15),
                                    const Text(
                                      "Available Balance",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    const SizedBox(height: 5),
                                    const Text(
                                      //datafrontuser.transactionretrait[index].methodRetrait

                                     // Userdata.mestransaction[index].adresscrypto
                                     "\$275.243",
                                     
                                      style:const TextStyle(
                                          color: primaryColor,
                                          fontWeight: FontWeight.w900),
                                    ),
                                    const SizedBox(height: 15),
                                    Stack(
                                      children: [
                                        Container(
                                          width: double.infinity,
                                          height: 5,
                                          decoration: BoxDecoration(
                                              color:
                                                  primaryColor.withOpacity(0.2),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(10))),
                                        ),
                                        LayoutBuilder(
                                          builder: (BuildContext context,
                                              BoxConstraints constraints) {
                                            return Container(
                                              width: constraints.maxWidth * 0.5,
                                              height: 5,
                                              decoration: const BoxDecoration(
                                                  color: primaryColor,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(10))),
                                            );
                                          },
                                        ),
                                      ],
                                    )
                                  ],
                                ));
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const chartdashboradwidget()
                      ],
                    )),
                const SizedBox(
                  width: defaultpadding,
                ),
                const Expanded(
                    flex: 2,
                    child: RecordDataMining())
              ],
            )
          ],
        ),
      ),
    );
  }
}



class chartdashboradwidget extends StatelessWidget {
  const chartdashboradwidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        const Text(
          "repartition de nos machines de mining en fonction des regions du salvador",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 350,
         // width: 800,
          padding: const EdgeInsets.all(defaultpadding),
          decoration: const BoxDecoration(
            color: SecondaryColor,
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          child: BarChart(
            BarChartData(
                borderData: FlBorderData(show: false),
                alignment: BarChartAlignment.spaceBetween,
                titlesData: FlTitlesData(
                  // bottomTitles: AxisTitles(sideTitles: SideTitles(showTitles: true)),
                  // leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  topTitles:
                      AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  rightTitles:
                      AxisTitles(sideTitles: SideTitles(showTitles: false)),
                ),
                //titlesData: FlTitlesData(leftTitles: ),
                gridData: FlGridData(
                    drawVerticalLine: false,
                    drawHorizontalLine: false,
                    horizontalInterval: 10),
                barGroups: [
                  BarChartGroupData(x: 1, barRods: [
                    BarChartRodData(
                      toY: 60,
                      color: const Color(0xFFFFCF26),
                      width: 30,
                      borderRadius: BorderRadius.circular(3),
                      backDrawRodData: BackgroundBarChartRodData(
                        toY: 90,
                        show: true,
                        color: const Color(0xFF26E5FF),
                      ),
                    )
                  ]),
                  BarChartGroupData(x: 2, barRods: [
                    BarChartRodData(
                      toY: 60,
                      color: const Color(0xFFFFCF26),
                      width: 30,
                      borderRadius: BorderRadius.circular(3),
                      backDrawRodData: BackgroundBarChartRodData(
                        toY: 90,
                        show: true,
                        color: const Color(0xFF26E5FF),
                      ),
                    )
                  ]),
                  BarChartGroupData(x: 3, barRods: [
                    BarChartRodData(
                      toY: 50,
                      color: const Color(0xFFFFCF26),
                      width: 30,
                      borderRadius: BorderRadius.circular(3),
                      backDrawRodData: BackgroundBarChartRodData(
                        toY: 90,
                        show: true,
                        color: const Color(0xFF26E5FF),
                      ),
                    )
                  ]),
                  BarChartGroupData(x: 4, barRods: [
                    BarChartRodData(
                      toY: 20,
                      color: const Color(0xFFFFCF26),
                      width: 30,
                      borderRadius: BorderRadius.circular(3),
                      backDrawRodData: BackgroundBarChartRodData(
                        toY: 90,
                        show: true,
                        color: const Color(0xFF26E5FF),
                      ),
                    )
                  ]),
                  BarChartGroupData(x: 5, barRods: [
                    BarChartRodData(
                      toY: 70,
                      color: const Color(0xFFFFCF26),
                      width: 30,
                      borderRadius: BorderRadius.circular(3),
                      backDrawRodData: BackgroundBarChartRodData(
                        toY: 90,
                        show: true,
                        color: const Color(0xFF26E5FF),
                      ),
                    )
                  ]),
                  BarChartGroupData(x: 6, barRods: [
                    BarChartRodData(
                      toY: 60,
                      color: const Color(0xFFFFCF26),
                      width: 30,
                      borderRadius: BorderRadius.circular(3),
                      backDrawRodData: BackgroundBarChartRodData(
                        toY: 90,
                        show: true,
                        color: const Color(0xFF26E5FF),
                      ),
                    )
                  ]),
                  BarChartGroupData(x: 7, barRods: [
                    BarChartRodData(
                      toY: 60,
                      color: const Color(0xFFFFCF26),
                      width: 30,
                      borderRadius: BorderRadius.circular(3),
                      backDrawRodData: BackgroundBarChartRodData(
                        toY: 90,
                        show: true,
                        color: const Color(0xFF26E5FF),
                      ),
                    )
                  ]),
                  BarChartGroupData(x: 8, barRods: [
                    BarChartRodData(
                      toY: 18,
                      color: const Color(0xFFFFCF26),
                      width: 30,
                      borderRadius: BorderRadius.circular(3),
                      backDrawRodData: BackgroundBarChartRodData(
                        toY: 90,
                        show: true,
                        color: const Color(0xFF26E5FF),
                      ),
                    )
                  ]),
                  BarChartGroupData(x: 9, barRods: [
                    BarChartRodData(
                      toY: 40,
                      color: const Color(0xFFFFCF26),
                      width: 30,
                      borderRadius: BorderRadius.circular(3),
                      backDrawRodData: BackgroundBarChartRodData(
                        toY: 90,
                        show: true,
                        color: const Color(0xFF26E5FF),
                      ),
                    )
                  ]),
                ]),
            swapAnimationCurve: Curves.linear,
            swapAnimationDuration: const Duration(microseconds: 150),
          ),
        ),
        const SizedBox(
          height: defaultpadding,
        ),
        Container(
          padding: const EdgeInsets.all(defaultpadding),
          decoration: const BoxDecoration(
            color: SecondaryColor,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Recent retrait",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),),
              SizedBox(
                width: double.infinity,
                child: DataTable(columns: const [
                  DataColumn(label: Text("type de retrait",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),)),
                  DataColumn(label: Text("Date",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),)),
                  DataColumn(label: Text("montant",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),)),
                ], rows:  [
                  listeretraitcode(),
                   listeretraitcode(),
                    listeretraitcode(),
                     listeretraitcode(),
                   listeretraitcode(),
                ]),
              )
            ],
          ),
        )
      ],
    );
  }

  DataRow listeretraitcode() {
    return   DataRow(cells: [
                  DataCell(Row(
                    children: [
                      Image.asset("assets/crypto/usdt.png",height: 30,width: 30,),
                      const SizedBox(width: 10,),
                      const Text(
                        "Usdt",
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  )),
                  const DataCell(Text(
                    "02/01/2022",
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

class investedAllocation extends StatelessWidget {
  investedAllocation(
      {Key? key, required this.cryptoname, required this.imgdatas})
      : super(key: key);
  String cryptoname, imgdatas;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: primaryColor.withOpacity(0.15),
        ),
        borderRadius: const BorderRadius.all(Radius.circular(5)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipOval(
                child: Image.asset(
                  imgdatas,
                  height: 20,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                "$cryptoname (0.00%)",
                style:
                    const TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
              )
            ],
          ),
          const Text(
            "\$0.00",
            style: TextStyle(
                color: Color(0xFF26E5FF), fontWeight: FontWeight.w700),
          )
        ],
      ),
    );
  }
}
