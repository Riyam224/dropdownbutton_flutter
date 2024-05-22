import 'package:flutter/material.dart';
import 'package:hw6/views/home_view.dart';

void main() {
  runApp(const ButtonsTask());
}

class ButtonsTask extends StatelessWidget {
  const ButtonsTask({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
