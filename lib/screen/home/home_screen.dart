import 'package:flutter/material.dart';
import 'package:web_profile/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: maxWidth),
          child: Row(
            children: [
              Expanded(
                // 2/9 = 0.22 , 22%의 공간을 차지.
                flex: 2, // 전체 공간의 2
                child: Container(color: Colors.white),
              ),
              Expanded(
                flex: 7, // 전체 공간의 7
                child: Container(
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
