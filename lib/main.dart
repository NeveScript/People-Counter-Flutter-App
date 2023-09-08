import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: const HomePage(),
    ); // MaterialApp
  } // build
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  /**
   * Decrement the counter.
   */
  void decrement() {
    print("Running 'decrement'");
  }

  /**
   * Increment the counter.
   */
  void increment() {
    print("Running 'increment'");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Can Enter",
            style: TextStyle(
                fontSize: 30, color: Colors.white, fontWeight: FontWeight.w800),
          ), // TextStyle
          const Padding(
            padding: EdgeInsets.all(32),
            child: Text(
              "0",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.w800),
            ), // TextStyle
          ), // Padding
          const SizedBox(width: 32,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: decrement,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  fixedSize: const Size(100, 100),
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ), // RoundedRectangleBorder
                ), // TextButton.styleFrom
                child: const Text(
                  "Left",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                ), //Text
              ), // TextButton

              TextButton(
                onPressed: increment,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  fixedSize: const Size(100, 100),
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ), // RoundedRectangleBorder
                ), // TextButton.styleFrom
                child: const Text(
                  "Entered",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                ), //Text
              ), // TextButton
            ], // children
          ), // Row
        ], // children
      ), // Column
    ); // Scaffold
  } // build
}
