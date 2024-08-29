import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../features/feature1/providers.dart';

class MainProviders extends StatelessWidget {
  final Widget child;

  MainProviders({required this.child});

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
