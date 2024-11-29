import 'package:components/presentation/components/com_input/com_input.dart';
import 'package:flutter/material.dart';

class ExampleComInput extends StatelessWidget {
  const ExampleComInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ComInput(
          hintText: '',
          onChanged: (value) {},
        ),
      ),
    );
  }
}
