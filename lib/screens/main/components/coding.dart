import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile/components/animated_progress_indicator.dart';
import 'package:flutter_profile/screens/constants.dart';

class Coding extends StatelessWidget {
  const Coding({
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
            "coding".tr(),
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.65,
          label: "Dart",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.90,
          label: "PHP",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.85,
          label: "HTML",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.50,
          label: "CSS",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.75,
          label: "JavaScript",
        ),
      ],
    );
  }
}
