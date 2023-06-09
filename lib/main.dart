import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _counter = 0;

  Widget _getCardPart2(String fileName) {
    return Card(
        elevation: 8,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Header 1",
                  style: TextStyle(
                      fontSize: 24, fontWeight: FontWeight.w800),
                ),
                Text(
                  "Header 2",
                  style: TextStyle(
                      fontSize: 24, fontWeight: FontWeight.w800),
                )
              ],
            ),
            AspectRatio(
                aspectRatio: 9 / 16,
                child: Image.asset(
                  fileName,
                  fit: BoxFit.fill,
                ))
          ],
        ));
  }

  Widget _getCardPart1(String fileName) {
    return Card(
        elevation: 8,
        child: Column(
          children: [
            const Text(
              "Header",
              style: TextStyle(
                  fontSize: 24, fontWeight: FontWeight.w800),
            ),
            Image.asset(
              fileName,
              fit: BoxFit.fill,
            )
          ],
        ));
  }

  Widget _getCardPart3(String fileName) {
    return InkWell(
      onTap: () {
        setState(() {
          _counter++;
        });
      },
      child: Card(
          elevation: 8,
          child: Column(
            children: [
               Text(
                "Clicked $_counter",
                style: const TextStyle(
                    fontSize: 24, fontWeight: FontWeight.w800),
              ),
              Image.asset(
                fileName,
                fit: BoxFit.fill,
              )
            ],
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              child: _getCardPart1('assets/images/1.jpeg'),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: _getCardPart1('assets/images/2.jpeg'),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: _getCardPart1('assets/images/3.jpeg'),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
