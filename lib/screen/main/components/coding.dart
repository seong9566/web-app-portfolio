import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../components/animated_progress_indicator.dart';

class Coding extends StatelessWidget {
  const Coding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        const AnimatedLinearProgressIndicator(percentage: 0.8, label: "Dart"),
        const AnimatedLinearProgressIndicator(percentage: 0.6, label: "Java"),
        const AnimatedLinearProgressIndicator(percentage: 0.4, label: "HTML"),
        const AnimatedLinearProgressIndicator(percentage: 0.4, label: "CSS"),
      ],
    );
  }
}
