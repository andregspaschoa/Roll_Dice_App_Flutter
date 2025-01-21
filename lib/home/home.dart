import 'package:flutter/material.dart';
import 'package:roll_dice_app/background_image_container.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: BackgroundImageContainer(),
      ),
    );
  }
}
