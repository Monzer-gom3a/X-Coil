import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:x_coil/featrues/home/presentation/view/widget/FloatingAddButton.dart';

import 'widget/home_page_body.dart';

class Home_Page_View extends StatelessWidget {
  const Home_Page_View({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Color(0xE9D40B0B),
              tabs: [
                Tab(
                  child: Text("محركات 1 فاز",
                      style: TextStyle(
                          //fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 2, 2, 2))),
                ),
                Tab(
                  child: Text(
                    "محركات 3 فازات",
                    style: TextStyle(
                        //fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 2, 2, 2)),
                  ),
                ),
              ],
            ),
            title: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(233, 212, 11, 11),
                        borderRadius: BorderRadius.circular(10)),
                    //  width: double.infinity,
                    child: Stack(
                      children: [
                        Row(
                          children: [
                            IconButton(
                              tooltip: "القائمة الجانبية",
                              onPressed: () {},
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
                              onPressed: () {},
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
