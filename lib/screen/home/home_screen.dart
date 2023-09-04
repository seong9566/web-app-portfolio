import 'package:flutter/material.dart';
import 'package:web_profile/screen/main/main_screen.dart';

import 'components/heigh_light_info.dart';
import 'components/home_banner.dart';
import 'components/my_project.dart';
import 'components/recommendations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainScreen(
      children: [
        HomeBanner(),
        HighLightInfo(),
        MyProjects(),
        Recommendations(),
      ],
    );
  }
}
