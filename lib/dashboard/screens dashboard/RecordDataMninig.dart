import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:miningpush/dashboard/constantsdashboard.dart';
import '../desktop dashboard/DashboardDesktop.dart';


class RecordDataMining extends StatelessWidget {
  const RecordDataMining({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultpadding),
      height: 600,
      decoration: const BoxDecoration(
          color: SecondaryColor,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        children: [
          const Text(
            "Record Datas Kalash",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.white),
          ),
          SizedBox(
              height: 200,
              child: Stack(
                children: [
                  Positioned.fill(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "40 days",
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 23,
                            color: Colors.white),
                      ),
                      Text("days online",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500))
                    ],
                  )),
                  PieChart(PieChartData(
                      sectionsSpace: 0,
                      startDegreeOffset: -90,
                      centerSpaceRadius: 60,
                      sections: [
                        PieChartSectionData(
                          // titleStyle:const TextStyle(color: Colors.white,fontWeight: FontWeight.w700),
                          color: const Color(0xFF26E5FF),
                          showTitle: false,
                          radius: 18,
                          value: 19,
                        ),
                        PieChartSectionData(
                            showTitle: false,
                            radius: 22,
                            color: const Color(0xFFFFCF26),
                            value: 21),
                        PieChartSectionData(
                            showTitle: false,
                            radius: 23,
                            color: const Color(0xFFEE2727),
                            value: 25),
                        PieChartSectionData(
                            showTitle: false,
                            radius: 16,
                            color:
                                primaryColor.withOpacity(0.1),
                            value: 18),
                      ])),
                ],
              )),
          const Text(
            "Invested Allocation",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.white),
          ),
          const SizedBox(
            height: 10,
          ),
          investedAllocation(
              cryptoname: "BTC",
              imgdatas: "assets/crypto/bitcoin.png"),
          const SizedBox(
            height: 10,
          ),
          investedAllocation(
              cryptoname: "TRC20",
              imgdatas: "assets/crypto/usdt.png"),
          const SizedBox(
            height: 10,
          ),
          investedAllocation(
              cryptoname: "TRON",
              imgdatas: "assets/crypto/tron.png"),
          const SizedBox(
            height: 10,
          ),
          investedAllocation(
              cryptoname: "BUSD",
              imgdatas: "assets/crypto/bnb.png"),
          const SizedBox(
            height: 10,
          ),
          investedAllocation(
              cryptoname: "Doge",
              imgdatas: "assets/crypto/dogecoin.png"),
          const SizedBox(
            width: 10,
          ),
          Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: primaryColor.withOpacity(0.15),
              ),
              borderRadius:
                  const BorderRadius.all(Radius.circular(5)),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ClipOval(
                      child: Image.asset(
                        "assets/images.png",
                        height: 20,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "Total (100%)",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                const Text(
                  "\$0.00",
                  style: TextStyle(
                      color: Color(0xFF26E5FF),
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}