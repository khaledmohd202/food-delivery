import 'package:flutter/material.dart';
import 'package:food_ordering/constants.dart';
import 'package:food_ordering/widgets/custom_floating_action_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset(kBoyImage),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'Order Your food Now!',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w900,
              fontStyle: FontStyle.italic,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(18),
            child: Text(
              'Order food and get delivery withing a few minutes to your door',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black45,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          const CustomFloatingActionButton(),
        ],
      ),
    );
  }
}

