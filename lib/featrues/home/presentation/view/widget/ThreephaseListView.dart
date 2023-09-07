import 'package:flutter/material.dart';
import 'package:x_coil/core/utils/constance.dart';

class ThreephaseListView extends StatelessWidget {
  ThreephaseListView({
    super.key,
  });

  int count = 10;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.whiteColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              height: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/notFound.png',
                    width: 300,
                  ),
                  const Text(
                    "لا يوجد بيانات محفوظة للعرض",
                    style: TextStyle(
                        color: Colors.black, fontFamily: "cairo", fontSize: 18),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
