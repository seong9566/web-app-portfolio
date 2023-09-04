import 'package:flutter/material.dart';
import 'package:web_profile/constants.dart';
import 'package:web_profile/screen/main/components/skills.dart';

import 'area_info_text.dart';
import 'coding.dart';
import 'download_cv.dart';
import 'knowledge.dart';
import 'my_info.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Drawer(
        child: Column(
      children: [
        MyInfo(),
        Expanded(
            child: SingleChildScrollView(
          padding: EdgeInsets.all(defaultPadding),
          child: Column(
            children: [
              AreaInfoText(
                title: "Residence",
                text: "Korea",
              ),
              AreaInfoText(
                title: "City",
                text: "Seoul",
              ),
              AreaInfoText(
                title: "Age",
                text: "25",
              ),
              Skills(),
              SizedBox(height: defaultPadding),
              Coding(),
              Knowledge(),
              Divider(),
              SizedBox(height: defaultPadding / 2),
              DownloadCV(),
            ],
          ),
        ))
      ],
    ));
  }
}
