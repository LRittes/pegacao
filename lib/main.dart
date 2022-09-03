import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bora dar uns beijos?'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: (MediaQuery.of(context).size.height / 90).floor(),
        itemBuilder: (c, idx) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              myButton(),
              myButton(),
              myButton(),
            ],
          );
        },
      ),
    );
  }

  Widget myButton() {
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(5),
      width: MediaQuery.of(context).size.width / 3.8,
      child: ElevatedButton(
        onPressed: () {},
        child: const Padding(
          padding: EdgeInsets.all(12.0),
          child: Text(
            'Sim',
            style: TextStyle(
              fontSize: 36,
            ),
          ),
        ),
      ),
    );
  }
}
