import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:x_coil/wrapper.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'X-Coil',
      theme: ThemeData(
        colorSchemeSeed: Colors.red,
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
      ),
       localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ar', 'EG'), // English, no country code
      ],
      debugShowCheckedModeBanner: false,
      home: const Wrapper(),
    );
  }
}
