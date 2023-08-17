import 'package:flutter/material.dart';
import 'package:miningpush/constante_data.dart';
import 'package:miningpush/models/transactions_models_data.dart';


class tableautransaction extends StatelessWidget {
  const tableautransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(15.0),
        ),
        color: color3,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Systeme',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
                ),
                Text(
                  'DateTime',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
                ),
                Text(
                  'Amount',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
                ),
                Text(
                  'Hash',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
                ),
                Text(
                  'type',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
                ),
              ],
            ),
          ),
          Container(
            height: 800,
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
            decoration: const BoxDecoration(
              borderRadius: BorderRadiusDirectional.only(
                topStart: Radius.circular(0),
                topEnd: Radius.circular(0),
                bottomStart: Radius.circular(15.0),
                bottomEnd: Radius.circular(15.0),
              ),
              color: color1,
            ),
            child: Row(
              
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount:  transactionContent.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 120,
                              //color: Colors.red,
                              child: Row(
                                children: [
                                   Image.asset( transactionContent[index].cryptoimg,height: 30,width: 30,),
                                   SizedBox(width: 10,),
                              Text(
                                transactionContent[index].namecrypt,
                                style:const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14),
                              ),
                                ],
                              ),
                            ),
                            Text(
                              transactionContent[index].date,
                              style:const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14),
                            ),
                            Text(
                              transactionContent[index].amount,
                              style:const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14),
                            ),
                            Text(
                              transactionContent[index].hashtrans,overflow: TextOverflow.ellipsis,
                              style:const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14),
                            ),
                            Container(
                                child: transactionContent[index].type
                                    ? const Text(
                                        "deposit",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14),
                                      )
                                    : const Text(
                                        "retrait",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14),
                                      ))
                            
                            
                               //,
                          ],
                        ),
                      );
          
                     // Text(transactionContent[index].country);
                    },
                  ),
                ),
                 /*Expanded(
                  child: ListView.builder(
                    itemCount:  transactionContent.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                         // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              transactionContent[index].date,
                              style:const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16),
                            ),
                               //,
                          ],
                        ),
                      );
          
                     // Text(transactionContent[index].country);
                    },
                  ),
                ),
                 Expanded(
                  child: ListView.builder(
                    itemCount:  transactionContent.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              transactionContent[index].amount,
                              style:const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16),
                            ),
                               //,
                          ],
                        ),
                      );
          
                     // Text(transactionContent[index].country);
                    },
                  ),
                ),
                 Expanded(
                  child: ListView.builder(
                    itemCount: transactionContent.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              transactionContent[index].hashtrans,overflow: TextOverflow.ellipsis,
                              style:const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16),
                            ),
                               //,
                          ],
                        ),
                      );
          
                     // Text(transactionContent[index].country);
                    },
                  ),
                ),
                 Expanded(
                  child: ListView.builder(
                    itemCount:  transactionContent.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                                child: transactionContent[index].type
                                    ? const Text(
                                        "deposit",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16),
                                      )
                                    : const Text(
                                        "retrait",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16),
                                      ))
                               //,
                          ],
                        ),
                      );
          
                     // Text(transactionContent[index].country);
                    },
                  ),
                ),*/
                            /**
                            
                            Text(
                              transactionContent[index].amount,
                              style:const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16),
                            ),
                            Text(
                              transactionContent[index].hashtrans,
                              style:const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16),
                            ),
                           
                             */
                         
              ],
            ),
          )
        ],
      ),
    );
  }
}
