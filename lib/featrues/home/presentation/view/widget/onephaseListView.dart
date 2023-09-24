import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:x_coil/blocs/Onephase_cubit/OnePhase_cubit.dart';
import 'package:x_coil/core/utils/constance.dart';
import 'package:x_coil/featrues/OnePhaseAddPage/data/models/onePhaseObject.dart';
import 'onePhaseListItem.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class OnephaseListView extends StatefulWidget {
  OnephaseListView({
    super.key,
  });

  @override
  State<OnephaseListView> createState() => _OnephaseListViewState();
}

class _OnephaseListViewState extends State<OnephaseListView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<OnePhaseCubit>(context).fetchAllOnePhaseData();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnePhaseCubit, OnePhaseState>(builder: (context, state) {
      List Data = BlocProvider.of<OnePhaseCubit>(context).data;
      List DataRevesed = new List.from(Data.reversed);

      return (state is DBHasData)
          ? Container(
              color: AppColors.grayColor,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: MasonryGridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  //  reverse: true,
                  physics: const BouncingScrollPhysics(),
                  itemCount: BlocProvider.of<OnePhaseCubit>(context).count,
                  
                  itemBuilder: (context, index) {
                    OnePhaseObject DataObject =
                        OnePhaseObject.fromJson(jsonDecode(DataRevesed[index]));
                    return onePhaseListItem(
                      data: DataObject,
                    );
                  },
                ),
              ),
            )
          : (state is DBHasNoData)
              ? Padding(
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
                                  color: Colors.black,
                                  fontFamily: "cairo",
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              : Container();
    });
  }
}
