import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_beamer/routes/app_routes_name.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ThirdScreen'),
        leading: BackButton(
          onPressed: () {
            context.beamToNamed(
              AppRoutesNames.firstScreen,
            );
          },
        ),
      ),
      body: Center(
        child: Column(
          children: [ElevatedButton(onPressed: () {}, child: Text("Move to screen 1"))],
        ),
      ),
    );
  }
}
