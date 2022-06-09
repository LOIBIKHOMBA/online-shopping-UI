import 'package:flutter/material.dart';
import 'package:shopping/containerDesign';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  List<Map<String, dynamic>> data = [
    {
      'icon': Icons.abc,
    }
  ];
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
          body: const OneContainerDesign(),
        ),
      ),
    );
  }
}
