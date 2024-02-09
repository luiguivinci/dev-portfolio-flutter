import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_profile/screens/constants.dart';

class MyInfo extends StatelessWidget {
  MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: Theme.of(context).colorScheme.background,
        child: Column(
          children: [
            Spacer(flex: 2),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/images/profile.jpeg"),
            ),
            Spacer(),
            Text(
              myName,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            Text(
              myJob.tr(),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                height: 1.5,
                color: Theme.of(context).textTheme.bodySmall!.color,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  email.tr(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    height: 1.5,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.copy),
                  onPressed: () {
                    Clipboard.setData(ClipboardData(text: email.tr()));
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("copied_to_clipboard".tr()),
                    ));
                  },
                ),
              ],
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
