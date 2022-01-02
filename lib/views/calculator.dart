import 'package:flutter/material.dart';

class PercentageCalculator extends StatefulWidget {
  const PercentageCalculator({Key? key}) : super(key: key);

  @override
  _PercentageCalculatorState createState() => _PercentageCalculatorState();
}

class _PercentageCalculatorState extends State<PercentageCalculator> {
  TextEditingController marksController = TextEditingController();
  TextEditingController totalMarksController = TextEditingController();

  String percentage = "0";

  calculatePercentage() {
    setState(() {
      double tempPercentage = (int.parse(marksController.text) /
              int.parse(totalMarksController.text)) *
          100;
      percentage = tempPercentage.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Percentage Calculator"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 2.2,
                  child: TextFormField(
                    controller: marksController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                        hintText: "Marks Obtained",
                        border: OutlineInputBorder()),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 2.2,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    controller: totalMarksController,
                    decoration: const InputDecoration(
                        hintText: "Total Marks", border: OutlineInputBorder()),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: ElevatedButton(
                onPressed: () {
                  calculatePercentage();
                },
                child: const Text("Calculate Percentage")),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              percentage + "%",
              style: const TextStyle(fontSize: 24),
            ),
          )
        ],
      ),
    );
  }
}
