import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class DownloadCV extends StatelessWidget {
  const DownloadCV({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {},
          child: FittedBox(
            child: Row(
              children: [
                Text(
                  "Download CV",
                  style: TextStyle(color: Theme.of(context).textTheme.bodyLarge!.color),
                ),
                const SizedBox(width: defaultPadding / 2),
                SvgPicture.asset("assets/icons/download.svg"),
              ],
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: defaultPadding),
          color: const Color(0xFF24242E),
          child: Row(
            children: [
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("assets/icons/linkedin.svg"),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("assets/icons/github.svg"),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("assets/icons/twitter.svg"),
              ),
              const Spacer(),
            ],
          ),
        )
      ],
    );
  }
}
