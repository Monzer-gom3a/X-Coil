import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:x_coil/core/utils/constance.dart';
import 'package:x_coil/featrues/home/presentation/view/widget/FloatingAddButton.dart';

import '../../../drawer/presentaion/drawerPage.dart';
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
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: AppColors.primamryColor,
              tabs: [
                Tab(
                  child: Text("محركات 1 فاز",
                      style: TextStyle(
                          //fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 2, 2, 2))),
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
                            IconButton(
                              tooltip: "البحث",
                              color: Colors.white,
                              onPressed: () {
                                Navigator.push(
                                    context, ScaleTransition2(DrawerPage()));
                              },
                              icon: const Row(
                                children: [
                                  // const Icon(Icons.search),
                                  Text(
                                    "ابحث في X-Coil ",
                                    style: TextStyle(
                                        //fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255)),
                                  ),
                                ],
                              ),
                            ),
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

class SizeTransition5 extends PageRouteBuilder {
  final Widget page;

  SizeTransition5(this.page)
      : super(
          pageBuilder: (context, animation, anotherAnimation) => page,
          transitionDuration: Duration(milliseconds: 1000),
          reverseTransitionDuration: Duration(milliseconds: 200),
          transitionsBuilder: (context, animation, anotherAnimation, child) {
            animation = CurvedAnimation(
                curve: Curves.fastLinearToSlowEaseIn,
                parent: animation,
                reverseCurve: Curves.fastOutSlowIn);
            return Align(
              alignment: Alignment.centerRight,
              child: SizeTransition(
                axis: Axis.horizontal,
                sizeFactor: animation,
                axisAlignment: 0,
                child: page,
              ),
            );
          },
        );
}

class ScaleTransition2 extends PageRouteBuilder {
  final Widget page;

  ScaleTransition2(this.page)
      : super(
          pageBuilder: (context, animation, anotherAnimation) => page,
          transitionDuration: Duration(milliseconds: 1000),
          reverseTransitionDuration: Duration(milliseconds: 200),
          transitionsBuilder: (context, animation, anotherAnimation, child) {
            animation = CurvedAnimation(
                curve: Curves.fastLinearToSlowEaseIn,
                parent: animation,
                reverseCurve: Curves.fastOutSlowIn);
            return ScaleTransition(
              alignment: Alignment.topCenter,
              scale: animation,
              child: child,
            );
          },
        );
}
