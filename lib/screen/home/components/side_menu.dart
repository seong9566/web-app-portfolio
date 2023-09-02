import 'package:flutter/material.dart';

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
      ],
    ));
  }
}
