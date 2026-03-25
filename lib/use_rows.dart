import 'package:flutter/material.dart';
import 'package:tools_kit/card.dart';
import 'package:tools_kit/horizontal_scroll.dart' hide AutoScrollHeadlines;
import 'package:tools_kit/ramdom_color_boxes.dart';

class RowExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          Row(
          mainAxisAlignment: MainAxisAlignment.center, // Aligns children along the main axis
          mainAxisSize: MainAxisSize.max, // Size of the row along the main axis
          crossAxisAlignment: CrossAxisAlignment.center, // Aligns children along the cross axis
          textDirection: TextDirection.ltr, // Direction for laying out children (left to right or right to left)
          verticalDirection: VerticalDirection.down, // Direction for placing children vertically
          textBaseline: TextBaseline.alphabetic, // Aligns text baselines when necessary
          children: [
            Text(
              "Hello, I am using Row!",
              style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 20,
                color: Colors.white,
                backgroundColor: Colors.red,
                fontWeight: FontWeight.bold,
                height: 2,
              ),
            ),
            SizedBox(width: 10), // Adds spacing between widgets
            Container(
              width: 200,
              height: 50,// Set width here
              color: Colors.blueAccent,
              child: Text("Hello, I am using Row!",
                  style: TextStyle(color: Colors.white,
                    fontWeight: FontWeight.bold,)),
            ),

            Icon(Icons.star, color: Colors.orange, size: 30), // Example additional widget
          ],
        ),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(
                builder: (context)=>CardPage()),);
          }, child: Text("card"),),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(
                builder: (context)=>RandomBoxes()),);
          }, child: Text("random boxes"),),
          // ElevatedButton(onPressed: (){
          //   Navigator.push(context, MaterialPageRoute(
          //       builder: (context)=>()),);
          // }, child: Text("scroll bar"),),
          // ElevatedButton(onPressed: (){
          //   Navigator.push(context, MaterialPageRoute(
          //       builder: (context)=>AutoScrollHeadlinesAllAllAll()),);
          // }, child: Text("auto Scroll"),),
        ]
      ),
    );
  }
}
