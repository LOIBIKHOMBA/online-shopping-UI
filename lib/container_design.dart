import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class OneContainerDesign extends StatefulWidget {
  const OneContainerDesign({
    Key? key,

    // required this.icon,
    // required this.color,
  }) : super(key: key);

  @override
  State<OneContainerDesign> createState() => _OneContainerDesignState();
}

class _OneContainerDesignState extends State<OneContainerDesign> {
  // final List _strings = [];
  String value = '';
  int quantity = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 290,
          height: 450,
          margin: const EdgeInsets.all(50.6),
          decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
          child: Column(
            children: [
              Row(
                // for top icon & text
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(
                    Icons.add_business_sharp,
                    color: Colors.green,
                  ),
                  Text(
                    '500gm',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      color: Colors.grey,
                    ),
                  ), // for top icon & text
                ],
              ),
              // const SizedBox(
              //   height: 50,
              // ),
              Container(
                height: 200,
                width: 200,
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXAiKHWUBqSIQAizvdPmAuyoPwCNT-VpMuK_DfyK6AX_vO4gWAIO_JlnCaZ-cNV6c0EaI&usqp=CAU',
                  fit: BoxFit.cover,
                ),
              ),
              // const SizedBox(
              //   height: 30,
              // ),
              const Text("Apple - Best of Himalaya's"),
              // const SizedBox(
              //   height: 10,
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Rs ",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    '199',
                    style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        color: Colors.grey),
                  ),
                  Text("   169.5  "),
                ],
              ),

              quantity == 0
                  ? Container(
                      child: ElevatedButton.icon(
                          onPressed: () {
                            setState(() {
                              quantity++;
                            });
                          },
                          icon: const Icon(Icons.add),
                          label: const Text("Add")),
                    )
                  : Container(
                      // color: Colors.red,
                      width: 120,
                      height: 30,
                      // for increment decrement button
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  quantity--;
                                });
                              },
                              child: const Icon(
                                Icons.remove,
                                // size: 10,
                              ),
                            ),
                            Text("$quantity"),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  quantity++;
                                });
                              },
                              child: const Icon(
                                Icons.add,
                                // size: 10,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
              // const SizedBox(
              //   height: 10,
              // ),
              // SizedBox(
              //   width: 70,
              //   child: Column(
              //     children: [
              //       Text(value),
              //       ElevatedButton(
              //         onPressed: () async {
              //           var prefs = await SharedPreferences.getInstance();
              //           Map<String, dynamic> selectedTimes = {
              //             "id": 1,
              //             "name": "",
              //             "price": 45,
              //             "offer_price": 40,
              //             "description": "",
              //             "img": "",
              //           };

              //           String encodedMap = json.encode(selectedTimes);
              //           print(encodedMap);

              //           prefs.setString('timeData', encodedMap);

              //           setState(() {
              //             quantity++;
              //             log(quantity.toString());
              //           });
              //         },
              //         child: Row(
              //           children: const [
              //             Icon(
              //               Icons.add,
              //               color: Colors.white,
              //             ),
              //             Text("Add")
              //           ],
              //         ),
              //         style: ButtonStyle(
              //           backgroundColor: MaterialStateProperty.all(Colors.red),
              //           padding: MaterialStateProperty.all(
              //             const EdgeInsets.all(5),
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: const [
                      Text(
                        'Standard Delivery',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 6.5,
                      ),
                      Text(
                        'Tomorrow Evening',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
