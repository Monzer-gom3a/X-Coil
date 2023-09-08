
import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:x_coil/featrues/drawer/presentaion/drawerPage.dart';

class searchAnimationButton extends StatelessWidget {
  const searchAnimationButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OpenContainer(
     // transitionDuration: Duration(milliseconds: 500),
      closedElevation: 0,
      tappable: true,
      closedColor: const Color.fromARGB(0, 193, 11, 11),
      closedBuilder: (_, OpenContainer) {
        return IconButton(
          color: Colors.white,
          onPressed: () {
            OpenContainer();
          },
          icon: const Text(
            "ابحث في X-Coil ",
            style: TextStyle(
                //fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255)),
          ),
        );
      },
      openBuilder: (_, CloseContainer) {
        return const DrawerPage();
      },
    );
  }
}
