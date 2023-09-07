import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:x_coil/core/utils/constance.dart';
import 'package:x_coil/featrues/home/presentation/view/widget/FloatingAddButton.dart';
import 'package:x_coil/featrues/home/presentation/view/widget/search_animated_button.dart';

import '../../../drawer/presentaion/drawerPage.dart';
import 'transitions/transitions.dart';
import 'widget/home_page_body.dart';

class Home_Page_View extends StatelessWidget {
  const Home_Page_View({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 1,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              indicatorWeight: 1,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: AppColors.primamryColor,
              tabs: [
                SizedBox(
                  width: double.infinity,
                  child: Expanded(
                    child: Tab(
                      child: Text("محركات 1 فاز",
                          style: TextStyle(
                              //fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 2, 2, 2))),
                    ),
                  ),
                ),
                /* Tab(
                  child: Text(
                    "محركات 3 فازات",
                    style: TextStyle(
                        //fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 2, 2, 2)),
                  ),
                ), */
              ],
            ),
            title: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColors.primamryColor,
                        borderRadius: BorderRadius.circular(10)),
                    //  width: double.infinity,
                    child: Stack(
                      children: [
                        Row(
                          children: [
                            IconButton(
                              tooltip: "القائمة الجانبية",
                              onPressed: () {
                                Navigator.push(
                                    context, SizeTransition5(DrawerPage()));
                              },
                              icon: Image.asset(
                                'assets/images/menu.png',
                                color: const Color.fromARGB(255, 255, 255, 255),
                                width: 23,
                              ),
                            ),
                            const Spacer(),
                            const searchAnimationButton(),
                            const Spacer(),
                            IconButton(
                              tooltip: "مزامنة مع الانترنت",
                              onPressed: () {},
                              icon:
                                  const Icon(CupertinoIcons.arrow_2_circlepath),
                              color: const Color.fromARGB(255, 255, 255, 255),
                              iconSize: 23,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            elevation: 0,
            centerTitle: true,
          ),
          body: const home_page_body(),
          floatingActionButton: const FloatingAddButton(),
        ));
  }
}
