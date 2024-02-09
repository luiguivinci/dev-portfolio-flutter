import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile/screens/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "knowledges".tr(),
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        KnowledgeText(text: "Flutter, Dart"),
        KnowledgeText(text: "DRY, KISS, OOP"),
        KnowledgeText(text: "UML" + " " + "design_patterns".tr()),
        KnowledgeText(text: "Git, Github, Kanban, Jira"),
      ],
    );
  }
}

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          SvgPicture.asset("assets/icons/check.svg"),
          SizedBox(width: defaultPadding / 2),
          Text(text),
        ],
      ),
    );
  }
}
