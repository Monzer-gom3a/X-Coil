import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:x_coil/core/utils/constance.dart';

class CloseIconButton extends StatelessWidget {
  const CloseIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0, top: 30),
      child: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(CupertinoIcons.clear),
        color: AppColors.whiteColor,
      ),
    );
  }
}
