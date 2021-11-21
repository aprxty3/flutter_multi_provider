import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_multi_provider/provider/hei_provider.dart';
import 'package:flutter_multi_provider/provider/wei_provider.dart';
import 'package:provider/provider.dart';

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var weightProvide = Provider.of<weightProvider>(context);
    var heightProvide = Provider.of<heightProvider>(context);

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

            // NOTE: MENGGUNAKAN CONSUMER
            // Consumer<weightProvider>(
            //   builder: (context, weightProvide, _) => Slider(
            //     min: 1,
            //     max: 100,
            //     divisions: 100,
            //     label: weightProvide.weight.round().toString(),
            //     value: weightProvide.weight,
            //     onChanged: (newValue) {
            //       newValue = newValue.roundToDouble();
            //       print('Weight: $newValue');
            //       weightProvide.weight = newValue;
            //     },
            //   ),
            // ),

            //NOTE: MENGGUNAKAN PROVIDER of CONTEXT

            Slider(
              min: 1,
              max: 100,
              divisions: 100,
              label: weightProvide.weight.round().toString(),
              value: weightProvide.weight,
              onChanged: (newValue) {
                newValue = newValue.roundToDouble();
                print('Weight: $newValue');
                weightProvide.weight = newValue;
              },
            ),

            SizedBox(height: 20),
            Text(
              'Your Height (Cm) : ',
              style: TextStyle(
                fontSize: 20,
              ),
            ),

            //NOTE: MENGGUNAKAN CONSUMER
            // Consumer<heightProvider>(
            //   builder: (context, heightProvide, _) => Slider(
            //     min: 1,
            //     max: 200,
            //     divisions: 200,
            //     label: heightProvide.height.round().toString(),
            //     value: heightProvide.height,
            //     activeColor: Colors.pink,
            //     inactiveColor: Colors.pink.withOpacity(0.2),
            //     onChanged: (newValue) {
            //       newValue = newValue.roundToDouble();
            //       print('Height: $newValue');
            //       heightProvide.height = newValue;
            //     },
            //   ),
            // ),

            //NOTE: MENGGUNAKAN PROVIDER of CONTEXT
            Slider(
              min: 1,
              max: 200,
              divisions: 200,
              label: heightProvide.height.round().toString(),
              value: heightProvide.height,
              activeColor: Colors.pink,
              inactiveColor: Colors.pink.withOpacity(0.2),
              onChanged: (newValue) {
                newValue = newValue.roundToDouble();
                print('Height: $newValue');
                heightProvide.height = newValue;
              },
            ),
            SizedBox(height: 50),

            //NOTE: MENGGUNAKAN CONSUMER
            // Consumer<weightProvider>(
            //   builder: (context, weightProvi, _) => Consumer<heightProvider>(
            //     builder: (context, heightProvi, _) => Text(
            //       'Your BMI : \n ${(weightProvi.weight / (pow(heightProvi.height / 100, 2))).toStringAsFixed(2)}',
            //       style: TextStyle(
            //         fontSize: 24,
            //         fontWeight: FontWeight.w500,
            //       ),
            //       textAlign: TextAlign.center,
            //     ),
            //   ),
            // ),

            //NOTE: MENGGUNAKAN PROVIDER of CONTEXT
            Text(
              'Your BMI : \n ${(weightProvide.weight / (pow(heightProvide.height / 100, 2))).toStringAsFixed(2)}',
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
