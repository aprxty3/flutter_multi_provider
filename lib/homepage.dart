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
              'Your Weight (kg) : ',
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
              'Your Height (Cm) : ',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Slider(
              min: 1,
              max: 200,
              value: 100,
              activeColor: Colors.pink,
              inactiveColor: Colors.pink.withOpacity(0.2),
              onChanged: (weightCM) {
                print('Height: $weightCM');
              },
            ),
            SizedBox(height: 50),
            Text(
              'Your BMI : \n 62.4',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
