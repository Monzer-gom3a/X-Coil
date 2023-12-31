import 'package:flutter/material.dart';
import 'package:x_coil/featrues/OnePhaseAddPage/presentation/view/1phaseAddPage.dart';

class FloatingAddButton extends StatelessWidget {
  const FloatingAddButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      autofocus: true,
      tooltip: "إضافة ",
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return OnePhaseAddPage(
              readOnly: false,
            );
          },
        ));
      },
      backgroundColor: const Color.fromARGB(233, 212, 11, 11),
      child: const Icon(
        Icons.add,
        color: Color.fromARGB(233, 255, 255, 255),
      ),
    );
  }
}
