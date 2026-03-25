import 'package:flutter/material.dart';
import 'dart:math';

class RandomBoxes extends StatelessWidget {
  final Random random = Random();

  Color getRandomColor() {
    return Color.fromARGB(
      255,
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );
  }

  double getRandomSize() {
    return 50; // size between 50 and 150
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Random Boxes")),
      // body: SingleChildScrollView(
      //   child: Column(
      //     children: [
      //       for (int row = 0; row < 2; row++)
      //         Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: [
      //               for (int box = 0; box < 4; box++)
      //                 Container(
      //                   child: Text("colors"),
      //                   width: getRandomSize(),
      //                   height: getRandomSize(),
      //                   color: getRandomColor(),
      //                   margin: EdgeInsets.all(1),
      //                 ),
      //             ],
      //           ),
      //         ),
      //     ],
      //   ),
      // ),
    );
  }
}
