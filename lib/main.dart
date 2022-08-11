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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Listview'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final data = [
    "a",
    "b",
    "c",
    "d",
    "e",
    "f",
    "g",
    "h",
    "i",
    "j",
    "k",
    "l",
    "m",
    "n",
    "o",
    "p",
    "q",
    "r",
    "s",
    "t",
    "u",
    "v",
    "w",
    "x",
    "y",
    "z"
  ];

  final subData = [
    "sub data",
    "sub data",
    "sub data",
    "sub data",
    "sub data",
    "sub data",
    "sub data",
    "sub data",
    "sub data",
    "sub data",
    "sub data",
    "sub data",
    "sub data",
    "sub data",
    "sub data",
    "sub data",
    "sub data",
    "sub data",
    "sub data",
    "sub data",
    "sub data",
    "sub data",
    "sub data",
    "sub data",
    "sub data",
    "sub data",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          //return listTileUI(context, index);
          return customUI(context, index);
        },
      ),
    );
  }

  ListTile listTileUI(BuildContext context, int index) {
    return ListTile(
      onTap: () {
        debugPrint(data[index]);
      },
      title: Center(child: Text(data[index])),
    );
  }

  Widget customUI(BuildContext context, int index) {
    return GestureDetector(
      onTap: () {
        debugPrint("100..");
        debugPrint("${data[index]}_and_${subData[index]}");
      },
      child: Container(
        margin: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.add_a_photo),
                const SizedBox(width: 20),
                Text(
                  data[index],
                ),
              ],
            ),
            const SizedBox(
              width: double.infinity,
              height: 30.0,
            ),
            Text(
              subData[index],
            ),
            const Divider(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
