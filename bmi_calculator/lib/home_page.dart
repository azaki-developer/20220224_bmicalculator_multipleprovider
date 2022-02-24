import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
                fontWeight: FontWeight.w500,
              ),
            ),
            Slider(
              min: 1,
              max: 100,
              value: 40,
              onChanged: (newValue) {
                print(
                  'Weight: $newValue'
                );
              },
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Weight (kg)',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            Slider(
              min: 1,
              max: 100,
              value: 40,
              onChanged: (newValue) {
                print(
                  'Weight: $newValue'
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
