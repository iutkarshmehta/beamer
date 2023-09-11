import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_beamer/routes/app_routes_name.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SecondScreen'),
        leading: BackButton(
          onPressed: () {
            context.beamToNamed(
              AppRoutesNames.secondScreen,
            );
          },
        ),
      ),
      body: Center(
        child: Column(
          children: [ElevatedButton(onPressed: () {
            context.beamToNamed(
                AppRoutesNames.thirdScreen);
          }, child: Text("Move to screen 3"))],
        ),
      ),
    );
  }
}
