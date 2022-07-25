import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget {
  // const BMIResultScreen({Key? key, required this.result}) : super(key: key);
  final double result;
  final bool isMale;
  final int age;

  const BMIResultScreen(
      {required this.result, required this.isMale, required this.age});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0A0E21),
      appBar: AppBar(
        toolbarHeight: 80.0,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: const Text(
          'Your Result',
          style: TextStyle(
            fontSize: 30.0,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                10.0,
              ),
              color: const Color(0xff1A1F38)),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (result <= 18.4)
                      const Text(
                        'UnderWeight',
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.white,
                        ),
                      )
                    else if (result >= 18.5 && result <= 24.9)
                      const Text(
                        'Normal',
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.green,
                        ),
                      )
                    else if (result >= 25.0 && result <= 39.9)
                      const Text(
                        'OverWight',
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.orange,
                        ),
                      )
                    else if (result >= 40.0)
                      const Text(
                        'Obsese',
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.red,
                        ),
                      )
                  ],
                ),
              ),
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Gender: ${isMale ? 'Male' : 'Female'}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 7.0,
                      ),
                      Text(
                        'Result: ${result.round()}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 7.0,
                      ),
                      Text(
                        'Age: $age',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 7.0,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
