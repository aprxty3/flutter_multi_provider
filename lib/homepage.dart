import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Weight (kg)',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Slider(
              min: 1,
              max: 100,
              value: 40,
              onChanged: (heightKG) {
                print('Weight: $heightKG');
              },
            ),
            SizedBox(height: 20),
            Text(
              'Height (Cm)',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Slider(
              min: 1,
              max: 100,
              value: 40,
              onChanged: (weightCM) {
                print('Height: $weightCM');
              },
            )
          ],
        ),
      ),
    );
  }
}
