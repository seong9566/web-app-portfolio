import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'animated_counter.dart';
import 'heigh_light.dart';

class HighLightInfo extends StatelessWidget {
  const HighLightInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HeighLight(
            counter: AnimatedCounter(
              value: 119,
              text: "+",
            ),
            label: "Subscribers",
          ),
          HeighLight(
            counter: AnimatedCounter(
              value: 40,
              text: "+",
            ),
            label: "Videos",
          ),
          HeighLight(
            counter: AnimatedCounter(
              value: 30,
              text: "+",
            ),
            label: "GitHub Projects",
          ),
        ],
      ),
    );
  }
}
