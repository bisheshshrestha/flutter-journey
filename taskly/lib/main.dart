import 'package:flutter/material.dart';
import 'package:taskly/pages/home_page.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async{
  await Hive.initFlutter("hive_boxes");
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Taskly',
      theme: ThemeData(
        primaryColor: Colors.red,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: false,
      ),
      home: const HomePage(),
    );
  }
}
