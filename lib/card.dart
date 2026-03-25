import 'package:flutter/material.dart';
import 'package:tools_kit/api_calling.dart';
import 'package:tools_kit/horizontal_scroll.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card Example"),
      ),
      body: Container(
        margin: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.red, // Background color of the box
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Card(
          color: Colors.white, // Card's own background color
          margin: EdgeInsets.zero, // Already handled by Container
          elevation: 4,
          shadowColor: Colors.green,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/images/hotel.jpg',
                    height: 150,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Hotel Sunshine",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text("Rating: 4.5 | 10 min away"),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    print("View Details clicked");
                  },
                  child: Text("View Details"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ApiCallingWidget()),
                    );
                  },
                  child: Text("API Calling"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
