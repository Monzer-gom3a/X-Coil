import 'package:flutter/material.dart';

import 'widgets/CloseIconButton.dart';
import 'widgets/DrawerPageBody.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 162, 11, 11),
      body:
          Center(child: Stack(children: [DrawerPageBody(), CloseIconButton()])),
    );
  }
}
