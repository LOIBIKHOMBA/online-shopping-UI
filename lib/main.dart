import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Center(child: Text('Shopping')),
            bottom: const TabBar(tabs: [
              Tab(
                text: 'Home',
                icon: Icon(Icons.home),
              ),
              Tab(
                text: 'category',
                icon: Icon(Icons.category),
              ),
              Tab(
                text: 'View Ordered Items',
                icon: Icon(Icons.view_agenda),
              ),
            ]),
          ),
          drawer: const Drawer(),
          body: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: Column(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 350,
                          height: 450,
                          margin: const EdgeInsets.all(50.6),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey)),
                          child: Column(
                            children: [
                              Row(
                                // for top icon & text
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                              const SizedBox(
                                height: 50,
                              ),
                              Container(
                                height: 200,
                                width: 200,
                                child: Image.network(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXAiKHWUBqSIQAizvdPmAuyoPwCNT-VpMuK_DfyK6AX_vO4gWAIO_JlnCaZ-cNV6c0EaI&usqp=CAU',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              const Text("Apple - Best of Himalaya's"),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text("Rs "),
                                  Text(
                                    '199',
                                    style: TextStyle(
                                        decoration: TextDecoration.lineThrough),
                                  ),
                                  Text("   169.5"),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: 70,
                                child: ElevatedButton(
                                  onPressed: () => {},
                                  child: Row(
                                    children: const [
                                      Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                      Text("Add")
                                    ],
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all(Colors.red),
                                    padding: MaterialStateProperty.all(
                                      const EdgeInsets.all(5),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(), // copy here
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Column(
                    children: [
                      Container(), // copy here
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
