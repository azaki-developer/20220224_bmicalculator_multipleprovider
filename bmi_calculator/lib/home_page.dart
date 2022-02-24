import 'dart:math';

import 'package:bmi_calculator/height_provider.dart';
import 'package:bmi_calculator/weight_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var weightProvider = Provider.of<WeightProvider>(context);
    var heightProvider = Provider.of<HeightProvider>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Your Weight (kg):',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            // NOTE: USING CONSUMER
            // Consumer<WeightProvider>(
            //   builder: (context, weightProvider, _) => Slider(
            //     min: 1,
            //     max: 100,
            //     divisions: 100,
            //     label: weightProvider.weight.round().toString(),
            //     value: weightProvider.weight,
            //     activeColor: Colors.blue,
            //     inactiveColor: Colors.blue.withOpacity(0.2),
            //     onChanged: (newValue) {
            //       newValue = newValue.roundToDouble();
            //       print('Weight: $newValue');
            //       weightProvider.weight = newValue;
            //     },
            //   ),
            // ),
            // NOTE: USING PROVIDER.OF(CONTEXT)
            Slider(
              min: 1,
              max: 100,
              divisions: 100,
              label: weightProvider.weight.round().toString(),
              value: weightProvider.weight,
              activeColor: Colors.blue,
              inactiveColor: Colors.blue.withOpacity(0.2),
              onChanged: (newValue) {
                newValue = newValue.roundToDouble();
                print('Weight: $newValue');
                weightProvider.weight = newValue;
              },
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Your Height (cm):',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            // NOTE: USING CONSUMER
            // Consumer<HeightProvider>(
            //   builder: (context, heightProvider, _) => Slider(
            //     min: 1,
            //     max: 200,
            //     divisions: 200,
            //     label: heightProvider.height.round().toString(),
            //     value: heightProvider.height,
            //     activeColor: Colors.pink,
            //     inactiveColor: Colors.pink.withOpacity(0.2),
            //     onChanged: (newValue) {
            //       newValue = newValue.roundToDouble();
            //       print('Height: $newValue');
            //       heightProvider.height = newValue;
            //     },
            //   ),
            // ),
            // NOTE: USING PROVIDER.OF(CONTEXT)
            Slider(
              min: 1,
              max: 200,
              divisions: 200,
              label: heightProvider.height.round().toString(),
              value: heightProvider.height,
              activeColor: Colors.pink,
              inactiveColor: Colors.pink.withOpacity(0.2),
              onChanged: (newValue) {
                newValue = newValue.roundToDouble();
                print('Height: $newValue');
                heightProvider.height = newValue;
              },
            ),
            SizedBox(
              height: 40,
            ),
            // NOTE: USING CONSUMER
            // Consumer<WeightProvider>(
            //   builder: (context, weightProvider, _) => Consumer<HeightProvider>(
            //     builder: (context, heightProvider, _) => Text(
            //       'Your Body Mass Index (BMI):\n${(weightProvider.weight / (pow(heightProvider.height / 100, 2))).toStringAsFixed(2)}',
            //       textAlign: TextAlign.center,
            //       style: TextStyle(
            //         fontSize: 24,
            //         fontWeight: FontWeight.w500,
            //       ),
            //     ),
            //   ),
            // ),
            // NOTE: USING PROVIDER.OF(CONTEXT)
            Text(
              'Your Body Mass Index (BMI):\n${(weightProvider.weight / (pow(heightProvider.height / 100, 2))).toStringAsFixed(2)}',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
