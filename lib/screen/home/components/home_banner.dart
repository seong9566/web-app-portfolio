import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:web_profile/responsive.dart';

import '../../../constants.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3, // 가로 3, 세로1 비율
      child: Stack(
        fit: StackFit.expand, // 자식 위젯을 화면에 꽉 채움.
        children: [
          Image.asset(
            "assets/images/bg.jpeg",
            fit: BoxFit.cover,
          ),
          Container(
            color: darkColor.withOpacity(0.66),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Discover my Amazing \nArt Space!",
                  style: Responsive.isDesktop(context) // Desktop(1024)일 경우 displaySmall
                      ? Theme.of(context).textTheme.displaySmall!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )
                      : Theme.of(context).textTheme.headlineSmall!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                ),
                if (Responsive.isMobileLarge(context)) const SizedBox(height: defaultPadding / 2), // Mobile(500) 보다 작다면
                const MyBuildAnimatedText(),
                const SizedBox(height: defaultPadding),
                if (!Responsive.isMobileLarge(context)) // LargeMobile(700) 보다 작으면 Button off
                  ElevatedButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: defaultPadding * 2,
                        vertical: defaultPadding,
                      ),
                      backgroundColor: primaryColor,
                    ),
                    child: const Text("EXPLORE NOW"),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      //아래 Text들을 모두 일정한 style 설정 해준다.
      style: Theme.of(context).textTheme.titleMedium!,
      child: Row(
        children: [
          if (!Responsive.isMobileLarge(context)) const FlutterCodeText(),
          if (!Responsive.isMobileLarge(context)) const SizedBox(width: defaultPadding / 2),
          const Text("I build "),
          AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText(
                "responsive web and mobile app",
                speed: const Duration(microseconds: 60),
              ),
              TyperAnimatedText("complete e-Commerce app UI."),
              TyperAnimatedText("Chat app with dark and light theme."),
            ],
          ),
          if (!Responsive.isMobileLarge(context)) const SizedBox(width: defaultPadding / 2),
          if (!Responsive.isMobileLarge(context)) const FlutterCodeText(),
        ],
      ),
    );
  }
}

class FlutterCodeText extends StatelessWidget {
  const FlutterCodeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(
        text: "<",
        children: [
          TextSpan(
            text: "flutter",
            style: TextStyle(color: primaryColor),
          ),
          TextSpan(text: ">")
        ],
      ),
    );
  }
}
