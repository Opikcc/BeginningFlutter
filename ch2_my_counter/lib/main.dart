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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          // primarySwatch: Colors.blue,
          primarySwatch: Colors.lightGreen,
          canvasColor: Colors.lightGreen.shade100,
          platform: TargetPlatform.iOS),
      home: MaximumBid(),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Theme(
            // Unique theme with ThemeData - Overwrite
            data: ThemeData(
              cardColor: Colors.deepOrange,
            ),
            child: Card(
              child: Text('Unique ThemeData'),
            ),
          ),
          Theme(
            // copyWith Theme - Inherit (Extended)
            data: Theme.of(context).copyWith(cardColor: Colors.deepOrange),
            child: Card(
              child: Text('copyWith Theme'),
            ),
          )
        ],
        // child: Theme(
        //   // copyWith Theme - Inherit (Extended)
        //   data: Theme.of(context).copyWith(cardColor: Colors.deepOrange),
        //   child: Card(
        //     child: Text('copyWith Theme'),
        //   ),
        // ),
        // child: Theme(
        //   // Unique theme with ThemeData - Overwrite
        //   data: ThemeData(
        //     cardColor: Colors.deepOrange,
        //   ),
        //   child: Card(
        //     child: Text('Unique ThemeData'),
        //   ),
        // ),
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: <Widget>[
        //     const Text(
        //       'You have pushed the button this many times:',
        //     ),
        //     Text(
        //       '$_counter',
        //       style: Theme.of(context).textTheme.headline4,
        //     ),
        //   ],
        // ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class MaximumBid extends StatefulWidget {
  @override
  _MaximumBidState createState() => _MaximumBidState();
}

class _MaximumBidState extends State<MaximumBid> {
  double _maxBid = 0.0;

  void _increaseMyMaxBid() {
    setState(() {
      // Add $50 to my current bid
      _maxBid += 50.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.teal,
            fixedSize: Size.fromWidth(100),
            padding: EdgeInsets.all(10),
          ),
          child: Text('Increase Bid'),
          onPressed: () => _increaseMyMaxBid(),
        )
      ],
    );
  }
}
