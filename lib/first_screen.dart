import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_beamer/routes/app_routes_name.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FirstScreen'),
      ),
      body: Center(
        child: Column(
          children: [ElevatedButton(onPressed: () {
            context.beamToNamed(
                AppRoutesNames.secondScreen);
          }, child: const Text("Move to screen 2"))],
        ),
      ),
    );
  }
}
