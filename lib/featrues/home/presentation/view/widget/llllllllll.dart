import 'package:flutter/material.dart';
import 'package:x_coil/featrues/OnePhaseAddPage/presentation/view/1phaseAddPage.dart';

class ssssssss extends StatefulWidget {
  const ssssssss({super.key});

  @override
  State<ssssssss> createState() => _ssssssssState();
}

class _ssssssssState extends State<ssssssss> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
        tag: "ListItemTag",
        child: Center(
            child: Container(
          height: 500,
          width: 300,
          child: OnePhaseAddPage(readOnly: true),
        )),
      ),
    );
  }
}
