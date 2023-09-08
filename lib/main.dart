import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:x_coil/blocs/Internet_bloc/network_bloc.dart';
import 'package:x_coil/blocs/Internet_bloc/network_event.dart';
import 'package:x_coil/blocs/Onephase_Add_cubit/OnePhase_Add_cubit.dart';
import 'package:x_coil/core/utils/constance.dart';
import 'package:x_coil/wrapper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddOnePhaseCubit(),
      child: MaterialApp(
        title: 'X-Coil',
        theme: ThemeData(
            colorSchemeSeed: AppColors.primamryColor,
            useMaterial3: true,
            fontFamily: 'cairo'),
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('ar', 'EG'), // English, no country code
        ],
        debugShowCheckedModeBanner: false,
        home: BlocProvider(
            create: (context) => NetworkBloc()..add(NetworkObserve()),
            child: Wrapper()),
      ),
    );
  }
}
