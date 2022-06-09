import 'package:flutter/material.dart';

class OneContainerDesign extends StatelessWidget {
  const OneContainerDesign({
    Key? key,
    required this.icon,
    required this.color,
  }) : super(key: key);

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
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                    padding: MaterialStateProperty.all(
                      const EdgeInsets.all(5),
                    ),
                  ),
                ),
              ),
              Container(
                child: Column(
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
                ),
              )
            ],
          ),
        ),
        Container(), // copy here
      ],
    );
  }
}
