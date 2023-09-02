import 'package:flutter/material.dart';

import '../../constants.dart';

class AnimatedCircularProgressIndicator extends StatelessWidget {
  const AnimatedCircularProgressIndicator({
    required this.percentage,
    required this.label,
    super.key,
  });
  final double percentage;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: percentage), // 0 ~ percentage까지 표시됨,
            duration: defaultDuration,
            builder: ((context, double value, child) => Stack(
                  fit: StackFit.expand,
                  children: [
                    CircularProgressIndicator(
                      value: value,
                      color: primaryColor,
                      backgroundColor: darkColor,
                    ),
                    Center(
                      child: Text(
                        "${(value * 100).toInt()}%",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),
                    const SizedBox(height: defaultPadding / 2),
                  ],
                )),
          ),
        ),
        const SizedBox(height: defaultPadding / 2),
        Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ],
    );
  }
}
