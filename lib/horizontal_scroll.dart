// import 'package:flutter/material.dart';
//
// class AutoScrollHeadlinesAllAllAll extends StatefulWidget {
//   @override
//   _AutoScrollHeadlinesAllAllAllState createState() => _AutoScrollHeadlinesAllAllAllState();
// }
//
// class _AutoScrollHeadlinesAllAllAllState extends State<AutoScrollHeadlinesAllAllAll> {
//   final List<String> headlines = [
//     "Breaking News: Market hits record high",
//     "Sports: Local team wins championship",
//     "Weather: Sunny days ahead",
//     "Tech: New smartphone released",
//     "Entertainment: Movie breaks box office records",
//     "Politics: Election results announced",
//     "Health: Tips for a healthier lifestyle",
//     "Travel: Top destinations for 2025",
//     "Finance: How to save more money",
//     "Education: Online courses trending",
//   ];
//
//   final ScrollController _scrollController = ScrollController();
//   double scrollPosition = 0;
//   bool forward = true;
//
//   @override
//   void initState() {
//     super.initState();
//     WidgetsBinding.instance.addPostFrameCallback((_) => startScrolling());
//   }
//
//   void startScrolling() async {
//     while (mounted) {
//       await Future.delayed(Duration(milliseconds: 50));
//       if (_scrollController.hasClients) {
//         if (forward) {
//           scrollPosition += 2;
//           if (scrollPosition >= _scrollController.position.maxScrollExtent) {
//             forward = false;
//           }
//         } else {
//           scrollPosition -= 2;
//           if (scrollPosition <= 0) {
//             forward = true;
//           }
//         }
//         _scrollController.jumpTo(scrollPosition);
//       }
//     }
//   }
//
//   @override
//   void dispose() {
//     _scrollController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Auto Scroll Headlines")),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 20),
//         child: SizedBox(
//           height: 50,
//           child: Scrollbar(
//             thumbVisibility: true,
//             thickness: 6,
//             radius: Radius.circular(10),
//             child: ListView.builder(
//               controller: _scrollController,
//               scrollDirection: Axis.horizontal,
//               itemCount: headlines.length,
//               itemBuilder: (context, index) {
//                 return Container(
//                   padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
//                   margin: EdgeInsets.symmetric(horizontal: 5),
//                   decoration: BoxDecoration(
//                     color: Colors.blueAccent,
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   alignment: Alignment.center,
//                   child: Text(
//                     headlines[index],
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 16),
//                   ),
//                 );
//               },
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
