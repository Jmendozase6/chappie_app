import 'package:flutter/material.dart';
import 'package:mental_health/presentation/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const HomeView(),
    );
  }
}
