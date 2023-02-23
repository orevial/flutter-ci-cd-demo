import 'package:design_system/design/spacings.design.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String env;

  const HomePage({
    required this.env,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter CI/CD demo')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '🏠 Welcome to Flutter CI/CD demo page !',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            SizedBox(height: ThemeSpacing.l),
            Text('Your are currently on $env environment'),
          ],
        ),
      ),
    );
  }
}
