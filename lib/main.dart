import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<String> items = [
    'Item1', 'Item2', 'Item3', 'Item4', 'Item5',
    'Item11', 'Item12', 'Item13', 'Item14', 'Item15',
    'Item16', 'Item17', 'Item18', 'Item19', 'Item20',
    'Item16', 'Item17', 'Item18', 'Item19', 'Item20',
    'Item16', 'Item17', 'Item18', 'Item19', 'Item20',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(30),
                    child: Image.asset(
                      "assets/images/logo.png",
                      width: 400,
                      height: 200,
                    ),
                  ),
                  GridView.count(
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    childAspectRatio: (1.4 / .5),
                    shrinkWrap: true,
                    children: List.generate(items.length, (index) {
                      return Container(
                        margin: const EdgeInsets.all(10.0),
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black
                          )
                        ),
                        child: Center(
                          child: Text(
                            style: Theme.of(context).textTheme.headline5,
                            items[index]
                          )
                        )
                      );
                    })
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}