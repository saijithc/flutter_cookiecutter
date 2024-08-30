import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cookiecutter_flutter/features/feature1/providers.dart';

class MainProviders extends StatelessWidget {
  const MainProviders({required this.child, super.key});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ...feature1Providers,
      ],
      child: child,
    );
  }
}
