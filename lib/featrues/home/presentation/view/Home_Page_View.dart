import 'package:floating_snackbar/floating_snackbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_storage/get_storage.dart';
import 'package:x_coil/blocs/Internet_bloc/network_bloc.dart';
import 'package:x_coil/blocs/Internet_bloc/network_state.dart';
import 'package:x_coil/blocs/Onephase_cubit/OnePhase_cubit.dart';
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
          backgroundColor: AppColors.whiteColor,
          appBar: AppBar(
            bottom: const TabBar(
              indicatorWeight: 1,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: AppColors.primamryColor,
              tabs: [
                tab1(),
                //tab2(),
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
                            BlocBuilder<NetworkBloc, NetworkState>(
                              builder: (context, state) {
                                if (state is NetworkFailure) {
                                  return IconButton(
                                    icon: const Icon(
                                      CupertinoIcons.wifi_slash,
                                      color: AppColors.whiteColor,
                                    ),
                                    onPressed: () {
                                      FloatingSnackBar(
                                          message: 'انت غير متصل بالانترنت',
                                          context: context);
                                    },
                                  );
                                } else if (state is NetworkSuccess) {
                                  return const searchAnimationButton();
                                } else {
                                  return const SizedBox.shrink();
                                }
                              },
                            ),
                            const Spacer(),
                            IconButton(
                              tooltip: "مزامنة مع الانترنت",
                              onPressed: () {
                                GetStorage('OnePhaseCoils').erase();
                                BlocProvider.of<OnePhaseCubit>(context)
                                    .fetchAllOnePhaseData();
                              },
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
          body: Center(
            child: home_page_body(),
          ),
          floatingActionButton: const FloatingAddButton(),
        ));
  }
}

class internetConnectionCheck extends StatelessWidget {
  const internetConnectionCheck({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<NetworkBloc, NetworkState>(
      listener: (context, state) {
        if (state is NetworkFailure) {
          FloatingSnackBar(
              backgroundColor: AppColors.primamryColor,
              message: "انت غير متصل بالانترنت",
              context: context);
          print("object");
        } else if (state is NetworkSuccess) {
          FloatingSnackBar(
              backgroundColor: Color.fromARGB(255, 7, 152, 72),
              message: "تم الاتصال بالانترنت",
              context: context);
        } else {
          print("object111111111111111");
        }
      },
      child: home_page_body(),
    );
  }
}

class tab2 extends StatelessWidget {
  const tab2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Tab(
      child: Text(
        "محركات 3 فازات",
        style: TextStyle(
            //fontSize: 17,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 2, 2, 2)),
      ),
    );
  }
}

class tab1 extends StatefulWidget {
  const tab1({
    super.key,
  });

  @override
  State<tab1> createState() => _tab1State();
}

class _tab1State extends State<tab1> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnePhaseCubit, OnePhaseState>(
      builder: (context, state) {
        return Tab(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("محركات 1 فاز",
              style: TextStyle(
                  //fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 2, 2, 2))),
          SizedBox(
            width: 6,
          ),
          // int rr = BlocProvider.of<OnePhaseCubit>(context).getCount();
          CircleAvatar(
            radius: 10,
            child: Text(
              '${BlocProvider.of<OnePhaseCubit>(context).count}',
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
            ),
          )
        ]));
      },
    );
  }
}
