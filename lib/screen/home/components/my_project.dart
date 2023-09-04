import 'package:flutter/material.dart';
import 'package:web_profile/screen/home/components/project_card.dart';

import '../../../constants.dart';
import '../../../models/Project.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "My Projects",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: defaultPadding),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: demo_projects.length, // 총 아이템의 갯수
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 1.3,
              crossAxisCount: 3, // 가로 한줄에 3개씩
              crossAxisSpacing: defaultPadding,
              mainAxisSpacing: defaultPadding,
            ),
            itemBuilder: (context, index) => ProjectCard(
              project: demo_projects[index],
            ),
          ),
        ],
      ),
    );
  }
}
