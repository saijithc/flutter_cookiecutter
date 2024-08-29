import 'package:flutter/material.dart';

///
class Feature1Screen extends StatelessWidget {
  ///
  const Feature1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Feature 1 Screen'),
      ),
      body: const Center(
        child: Text('Feature 1 Content'),
      ),
    );
  }
}
