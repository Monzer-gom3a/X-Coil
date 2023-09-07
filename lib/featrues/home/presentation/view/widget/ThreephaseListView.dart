import 'package:flutter/material.dart';

class ThreephaseListView extends StatelessWidget {
  const ThreephaseListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                  'assets/notFound.png',
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
    );
  }
}