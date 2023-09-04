import 'package:flutter/material.dart';
import 'package:web_profile/constants.dart';

import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({this.children, super.key});
  final List<Widget>? children;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
