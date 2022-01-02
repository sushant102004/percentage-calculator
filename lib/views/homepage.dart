import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percentagecalculator/views/calculator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 300),
              child: Text("Percentage Calculator",
                  style: GoogleFonts.comfortaa(
                      textStyle: const TextStyle(
                          fontSize: 28, fontWeight: FontWeight.w600))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 2, right: 2),
            child: Text(
              "A Simple Percentage Calculator Made In Flutter",
              textAlign: TextAlign.center,
              style: GoogleFonts.comfortaa(
                  textStyle: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w600)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ElevatedButton(
                child: const Text("Next"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PercentageCalculator()));
                }),
          )
        ],
      ),
    );
  }
}
