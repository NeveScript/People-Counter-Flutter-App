import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  } // build
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  /**
   * Decrement the counter.
   */
  void decrement() {
    setState(() {
      count--;
    });
  }

  /**
   * Increment the counter.
   */
  void increment() {

    setState(() {
      count++;
    });
  }

  bool get isEmpty => (count == 0);
  bool get isFull => (count == 20);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              (isFull ? "FULL!" : "Can Enter"),
              style: TextStyle(
                  fontSize: 30,
                  color: (isFull ? Colors.red : Colors.black),
                  fontWeight: FontWeight.w800),
            ),
            Padding(
              padding: const EdgeInsets.all(32),
              child: Text(
                "$count",
                style: TextStyle(
                    fontSize: 80,
                    color: (isFull ? Colors.red : Colors.black),
                    fontWeight: FontWeight.w700),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: (isEmpty ? null : decrement),
                  style: TextButton.styleFrom(
                    backgroundColor: (isEmpty ? Colors.white.withOpacity(0.2) : Colors.white),
                    fixedSize: const Size(100, 100),
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ), // TextButton.styleFrom
                  child: const Text(
                    "Left",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 32,
                ),
                TextButton(
                  onPressed: (isFull ? null : increment),
                  style: TextButton.styleFrom(
                    backgroundColor: (isFull ? Colors.white.withOpacity(0.2) : Colors.white),
                    fixedSize: const Size(100, 100),
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ), // TextButton.styleFrom
                  child: const Text(
                    "Entered",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                    ),
                  ),
                ),
              ], // children
            ),
          ], // children
        ),
      ),
    );
  } // build
}
