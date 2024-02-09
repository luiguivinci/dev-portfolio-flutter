import 'package:flutter/material.dart';
import 'package:flutter_profile/screens/home/home_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_profile/theme/theme_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: EasyLocalization(
        supportedLocales: [Locale('en'), Locale('es')],
        path: 'assets/translations',
        fallbackLocale: Locale('es'),
        child: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  // App root widget
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      theme: Provider.of<ThemeProvider>(context).themeData,
      home: HomeScreen(),
    );
  }
}
