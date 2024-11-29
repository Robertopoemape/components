import 'package:components/core/configs/confgs.dart';
import 'package:components/presentation/components/com_button/com_button.dart';
import 'package:flutter/material.dart';

class ExampleComButton extends StatelessWidget {
  const ExampleComButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Botones'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const ComButton(
              nameStyleColor: Colors.black,
              nameButton: 'Outline',
            ),
            ComButton(
              nameStyleColor: Colors.white,
              borderColor: Colors.blue,
              nameButton: 'Cargar',
              onPressed: () async {
                await Future.delayed(const Duration(seconds: 2));
              },
              prefixIcon: Icons.download,
              suffixIcon: Icons.arrow_forward,
            ),
            ComButton(
              onPressed: () async {},
              nameStyleColor: Colors.white,
              borderColor: ComColors.pri600,
              nameButton: 'Aceptar',
            ),
            ComButton(
              onPressed: () async {
                Navigator.pop(context);
              },
              nameStyleColor: Colors.white,
              borderColor: ComColors.err500,
              nameButton: 'Cancelar',
            ),
            ComButton(
              nameStyleColor: Colors.black,
              nameButton: 'Login',
              onPressed: () async {},
              style: ButtonStyleType.animated,
            ),
            ComButton(
              nameStyleColor: Colors.black,
              nameButton: 'Icon Only',
              prefixIcon: Icons.person_outline_rounded,
              onPressed: () async {},
              style: ButtonStyleType.iconOnly,
            ),
          ],
        ),
      ),
    );
  }
}
