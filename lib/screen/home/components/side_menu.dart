import 'package:flutter/material.dart';
import 'package:web_profile/constants.dart';

import '../../components/animated_progress_indicator.dart';
import 'area_info_text.dart';
import 'my_info.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        const MyInfo(),
        Expanded(
            child: SingleChildScrollView(
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            children: [
              const AreaInfoText(
                title: "Residence",
                text: "Korea",
              ),
              const AreaInfoText(
                title: "City",
                text: "Seoul",
              ),
              const AreaInfoText(
                title: "Age",
                text: "25",
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                child: Text(
                  "Skills",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
              const Row(
                children: [
                  Expanded(
                    child: AnimatedCircularProgressIndicator(
                      percentage: 0.8,
                      label: "Flutter",
                    ),
                  ),
                  SizedBox(width: defaultPadding),
                  Expanded(
                    child: AnimatedCircularProgressIndicator(
                      percentage: 0.3,
                      label: "Spring Boot",
                    ),
                  ),
                  SizedBox(width: defaultPadding),
                  Expanded(
                    child: AnimatedCircularProgressIndicator(
                      percentage: 0.3,
                      label: "Firebase",
                    ),
                  ),
                ],
              ),
            ],
          ),
        ))
      ],
    ));
  }
}
