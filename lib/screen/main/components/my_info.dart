import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23, // 가로가 세로보다 1.23배 더 길게
      child: Container(
        color: const Color(0xFF242430),
        child: Column(
          children: [
            const Spacer(),
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/images/profile.jpg"),
            ),
            const Spacer(),
            Text(
              "Hyeon Seong",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const Text(
              "Mobile Developer \nFlutter Developer",
              style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
