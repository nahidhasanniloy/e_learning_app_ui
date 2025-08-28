import 'package:e_learning_app/views/HomeScreen/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
        body: Column(children: [
          homeAppBar(size),




    ])
    );
  }
}
