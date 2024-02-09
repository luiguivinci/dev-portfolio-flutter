import 'package:flutter/material.dart';
import 'package:flutter_profile/screens/constants.dart';

class AreaInfoText extends StatelessWidget {
  const AreaInfoText({
    Key? key,
    this.title,
    this.text,
  }) : super(key: key);

  final String? title, text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title!,
            style: TextStyle(
              color: Theme.of(context).textTheme.bodySmall!.color,
            ),
          ),
          Text(text!),
        ],
      ),
    );
  }
}
