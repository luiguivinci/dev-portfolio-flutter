import 'package:flutter/material.dart';
import 'package:flutter_profile/responsive.dart';
import 'package:flutter_profile/screens/constants.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_profile/theme/theme_provider.dart';
import 'package:provider/provider.dart';

import 'components/side_menu.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key, required this.children}) : super(key: key);
  final List<Widget> children;

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: Theme.of(context).colorScheme.background,
              leading: Builder(
                builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(Icons.menu,
                      color: Theme.of(context).iconTheme.color),
                ),
              ),
              actions: [
                IconButton(
                  icon: Text(_getLanguageInitials(context),
                      style: TextStyle(
                        fontSize: 18,
                        color: Theme.of(context).iconTheme.color,
                      )),
                  onPressed: () {
                    _toggleLanguage(context);
                  },
                ),
                // TODO:: Implementar el dark mode
                IconButton(
                  icon: Icon(
                    Icons.lightbulb_outline,
                    color: Theme.of(context).iconTheme.color,
                  ),
                  onPressed: () {
                    Provider.of<ThemeProvider>(context, listen: false)
                        .toggleTheme();
                  },
                ),
              ],
            ),
      drawer: SideMenu(),
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (Responsive.isDesktop(context))
                Expanded(
                  flex: 2,
                  child: SideMenu(),
                ),
              SizedBox(width: defaultPadding),
              Expanded(
                flex: 7,
                child: SingleChildScrollView(
                  child: Column(
                    children: widget.children,
                  ),
                ),
              ),
            ],
          ),
        ),
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

    setState(() {});
  }
}
