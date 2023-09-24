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

/*
 Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8, bottom: 20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: const Color.fromARGB(255, 193, 11, 11),
              ),
              height: 50,
              width: double.infinity,
            ),
          ),
        )
 */