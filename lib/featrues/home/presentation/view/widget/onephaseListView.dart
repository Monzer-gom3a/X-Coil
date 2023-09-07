import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'onePhaseListItem.dart';

class OnephaseListView extends StatelessWidget {
  const OnephaseListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 16),
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          reverse: true,
          itemBuilder: (context, index) {
            return const onePhaseListItem();
          },
        ),
      ),
    );

    /* Padding(
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
    ); */
  }
}
