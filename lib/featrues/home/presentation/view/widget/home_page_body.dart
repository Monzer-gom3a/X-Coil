import 'package:flutter/material.dart';
import 'package:x_coil/featrues/home/presentation/view/widget/onephaseListView.dart';

class home_page_body extends StatelessWidget {
  const home_page_body({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBarView(physics: BouncingScrollPhysics(), children: [
      OnephaseListView(),
      //ThreephaseListView(),
    ]);
  }
}
