import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile/responsive.dart';
import 'package:flutter_profile/screens/constants.dart';
import 'package:flutter_profile/theme/theme_provider.dart';
import 'package:provider/provider.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 2.5 : 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/bg.jpeg",
            fit: BoxFit.cover,
          ),
          Container(
            color: Theme.of(context).colorScheme.primary.withOpacity(0.30),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      myName,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.bold,
                            color:
                                Theme.of(context).textTheme.titleLarge!.color,
                          ),
                    ),
                    if (!Responsive.isMobileLarge(context))
                      Row(
                        children: [
                          IconButton(
                            icon: Text(_getLanguageInitials(context),
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                )),
                            onPressed: () {
                              _toggleLanguage(context);
                            },
                          ),
                          SizedBox(width: defaultPadding / 2),
                          IconButton(
                            icon: Icon(
                              Icons.lightbulb_outline,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Provider.of<ThemeProvider>(context, listen: false)
                                  .toggleTheme();
                            },
                          ),
                        ],
                      ),
                  ],
                ),

                Text(
                  "welcome_title".tr(),
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.displaySmall!.copyWith(
                            fontWeight: FontWeight.bold,
                            color:
                                Theme.of(context).textTheme.titleLarge!.color,
                          )
                      : Theme.of(context).textTheme.headlineSmall!.copyWith(
                            fontWeight: FontWeight.bold,
                            color:
                                Theme.of(context).textTheme.titleLarge!.color,
                          ),
                ),
                if (Responsive.isMobileLarge(context))
                  const SizedBox(height: defaultPadding / 2),

                MyBuildAnimatedText(),
                SizedBox(height: defaultPadding),

                // Mientras no sea necesario el botón explore now no se mostrará

                // if (Responsive.isMobileLarge(context))
                //  ElevatedButton(
                //    onPressed: () {},
                //    style: TextButton.styleFrom(
                //      padding: EdgeInsets.symmetric(
                //          horizontal: defaultPadding * 2,
                //          vertical: defaultPadding),
                //      backgroundColor: Theme.of(context).colorScheme.secondary,
                //    ),
                //    child: Text(
                //      "explore_now".tr(),
                //      style: TextStyle(
                //        color: Theme.of(context).colorScheme.background,
                //      ),
                //    ),
                //  ),
              ],
            ),
          )
        ],
      ),
    );
  }

  String _getLanguageInitials(BuildContext context) {
    Locale currentLocale = EasyLocalization.of(context)!.locale;
    return currentLocale.languageCode.toUpperCase();
  }

  void _toggleLanguage(BuildContext context) {
    Locale currentLocale = EasyLocalization.of(context)!.locale;
    Locale newLocale =
        currentLocale.languageCode == 'en' ? Locale('es') : Locale('en');
    EasyLocalization.of(context)!.setLocale(newLocale);
  }
}

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      // it applies same style to all the widgets under it
      style: Theme.of(context).textTheme.titleLarge!,
      maxLines: 1,
      child: Row(
        children: [
          if (!Responsive.isMobileLarge(context)) FlutterCodedText(),
          if (!Responsive.isMobileLarge(context))
            SizedBox(width: defaultPadding / 2),
          Text(
            "i_build".tr() + " ",
            style: TextStyle(fontSize: 15),
          ),
          Responsive.isMobile(context)
              ? Expanded(child: AnimatedText())
              : AnimatedText(),
          if (!Responsive.isMobileLarge(context))
            SizedBox(width: defaultPadding / 2),
          if (!Responsive.isMobileLarge(context)) FlutterCodedText(),
        ],
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        //TODO:: DEBO HACER QUE AL CAMBIAR IDIOMA SE ACTUALICE EL TEXTO MIENTRAS AUN SE CONSTRUYE
        TyperAnimatedText(
          "project_tiny_description_1".tr(),
          speed: Duration(milliseconds: 60),
          textStyle: TextStyle(fontSize: 15),
        ),
        TyperAnimatedText(
          "project_tiny_description_2".tr(),
          speed: Duration(milliseconds: 60),
          textStyle: TextStyle(fontSize: 15),
        ),
        TyperAnimatedText(
          "project_tiny_description_1".tr(),
          speed: Duration(milliseconds: 60),
          textStyle: TextStyle(fontSize: 15),
        ),
      ],
    );
  }
}

class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "<",
        children: [
          TextSpan(
            text: "LuiguiVinci",
            style: TextStyle(color: Theme.of(context).colorScheme.secondary),
          ),
          TextSpan(text: ">"),
        ],
      ),
    );
  }
}
