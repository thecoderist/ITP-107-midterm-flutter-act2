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
      home: Scaffold(
        appBar: AppBar(title: const Text('GESTURE DETECTOR APPs')),
        body: const GestureExample(),
      ),
    );
  }
}

class GestureExample extends StatefulWidget {
  const GestureExample({super.key});

  @override
  State<GestureExample> createState() => _GestureExampleState();
}

class _GestureExampleState extends State<GestureExample> {
  String _gesture = "Tap here 👇";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Gesture Detector with Text Container
          GestureDetector(
            onTap: () {
              setState(() {
                _gesture = "Single Tap 🖱️";
              });
              print("Brian Dela Cruz, 20 | Gab Pantaleon, 20");
            },
            onDoubleTap: () {
              setState(() {
                _gesture = "Double Tap ✌️";
              });
              debugPrint("ITP 107 - MOBILE APP DEV");
            },
            onLongPress: () {
              setState(() {
                _gesture = "Long Press ✋";
              });
              debugPrint("Singing & Dancing | pag may tiyaga may nilaga");
            },
            child: Container(
              width: double.infinity,
              height: 200,
              margin: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  )
                ],
              ),
              alignment: Alignment.center,
              child: Text(
                _gesture,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),

      // For inserting Images
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 10,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                'assets/hehe12.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 10,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                'assets/gab.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
