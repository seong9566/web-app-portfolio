import 'package:flutter/material.dart';
import 'package:web_profile/constants.dart';
import 'package:web_profile/responsive.dart';

import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({this.children, super.key});
  final List<Widget>? children;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context) // Desktop이면 AppBar 숨김
          ? null
          : AppBar(
              backgroundColor: bgColor,
              leading: Builder(builder: (context) {
                return IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(Icons.menu),
                );
              }),
            ),
      drawer: const SideMenu(),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (Responsive.isDesktop(context))
                const Expanded(
                  // 2/9 = 0.22 , 22%의 공간을 차지.
                  flex: 2, // 전체 공간의 2
                  child: SideMenu(),
                ),
              Expanded(
                  flex: 7, // 전체 공간의 7
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ...children!,
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
