import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile/components/animated_counter.dart';
import 'package:flutter_profile/responsive.dart';
import 'package:flutter_profile/screens/constants.dart';

import 'heigh_light.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: defaultPadding, horizontal: defaultHorizontalPadding),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeighLight(
                      counter: AnimatedCounter(
                        value: subscribersCount,
                        text: "K+",
                      ),
                      label: "subscribers".tr(),
                    ),
                    HeighLight(
                      counter: AnimatedCounter(
                        value: videosCount,
                        text: "+",
                      ),
                      label: "videos".tr(),
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeighLight(
                      counter: AnimatedCounter(
                        value: githubProjectsCount,
                        text: "+",
                      ),
                      label: "github_projects".tr(),
                    ),
                    HeighLight(
                      counter: AnimatedCounter(
                        value: starsCount,
                        text: "K+",
                      ),
                      label: "stars".tr(),
                    ),
                  ],
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HeighLight(
                  counter: AnimatedCounter(
                    value: subscribersCount,
                    text: "K+",
                  ),
                  label: "subscribers".tr(),
                ),
                HeighLight(
                  counter: AnimatedCounter(
                    value: videosCount,
                    text: "+",
                  ),
                  label: "videos".tr(),
                ),
                HeighLight(
                  counter: AnimatedCounter(
                    value: githubProjectsCount,
                    text: "+",
                  ),
                  label: "github_projects".tr(),
                ),
                HeighLight(
                  counter: AnimatedCounter(
                    value: starsCount,
                    text: "K+",
                  ),
                  label: "stars".tr(),
                ),
              ],
            ),
    );
  }
}
