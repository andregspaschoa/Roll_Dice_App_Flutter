import 'package:flutter/material.dart';
import 'package:roll_dice_app/dice_roller_animated.dart';

class BackgroundImageContainer extends StatelessWidget {
  const BackgroundImageContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/fundo-preto-envelhecido.jpeg'), // Caminho para a imagem de fundo
          fit: BoxFit.cover, // Ajusta a imagem para cobrir toda a tela
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}