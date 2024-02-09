import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile/screens/constants.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_svg/svg.dart';

// Componentes del menú lateral
import 'area_info_text.dart';
import 'skills.dart';
import 'coding.dart';
import 'knowledges.dart';
import 'my_info.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    AreaInfoText(
                      title: "residence".tr(),
                      text: residence,
                    ),
                    AreaInfoText(
                      title: "city".tr(),
                      text: city,
                    ),
                    AreaInfoText(
                      title: "years_old".tr(),
                      text: (DateTime.now().year - birth).toString(),
                    ),
                    Skills(),
                    SizedBox(height: defaultPadding),
                    Coding(),
                    Knowledges(),
                    Divider(),
                    SizedBox(height: defaultPadding / 2),
                    TextButton(
                      onPressed: () async {
                        Locale currentLocale =
                            EasyLocalization.of(context)!.locale;
                        Uri targetUrl = currentLocale.languageCode == 'en'
                            ? Uri.parse(cvUrlEn)
                            : Uri.parse(cvUrlEs);

                        launchUrl(targetUrl);
                      },
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              "download_cv".tr(),
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .color,
                              ),
                            ),
                            SizedBox(width: defaultPadding / 2),
                            SvgPicture.asset("assets/icons/download.svg")
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: defaultPadding),
                      color: Theme.of(context).colorScheme.background,
                      child: Row(
                        children: [
                          Spacer(),
                          IconButton(
                            onPressed: () {
                              launchUrl(Uri.parse(linkedinUrl));
                            },
                            icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                          ),
                          IconButton(
                            onPressed: () {
                              launchUrl(Uri.parse(githubUrl));
                            },
                            icon: SvgPicture.asset("assets/icons/github.svg"),
                          ),
                          IconButton(
                            onPressed: () {
                              // pop up saying 'soon'
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text("soon".tr()),
                                    content: Text("coming_soon_url".tr()),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context)
                                              .pop(); // Cerrar el diálogo
                                        },
                                        child: Text("close".tr()),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            icon: SvgPicture.asset("assets/icons/twitter.svg"),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
