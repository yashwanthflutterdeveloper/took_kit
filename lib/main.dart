import 'package:flutter/material.dart';
import 'package:tools_kit/use_rows.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tool Kit App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: RowExample(),

    );
  }
}
