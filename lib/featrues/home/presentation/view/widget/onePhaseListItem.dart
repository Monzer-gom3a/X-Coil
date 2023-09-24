import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_down_button/pull_down_button.dart';
import 'package:x_coil/blocs/Onephase_cubit/OnePhase_cubit.dart';
import 'package:x_coil/featrues/OnePhaseAddPage/data/models/onePhaseObject.dart';
import 'package:x_coil/featrues/OnePhaseAddPage/presentation/view/1phaseAddPage.dart';
import 'package:x_coil/featrues/drawer/presentaion/drawerPage.dart';

// ignore: camel_case_types
class onePhaseListItem extends StatelessWidget {
  const onePhaseListItem({Key? key, required this.data}) : super(key: key);

  final OnePhaseObject data;

  @override
  Widget build(BuildContext context) {
    List scheduleOnePhase =
        BlocProvider.of<OnePhaseCubit>(context).scheduleOnePhase;
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(PageRouteBuilder(
            reverseTransitionDuration: Duration(milliseconds: 200),
            transitionDuration: Duration(milliseconds: 500),
            opaque: false,
            barrierDismissible: true,
            pageBuilder: (BuildContext context, _, __) {
              return Hero(tag: data.id.toString(), child: DrawerPage());
            }));
      },
      child: Hero(
        flightShuttleBuilder: (flightContext, animation, flightDirection,
            fromHeroContext, toHeroContext) {
          return Icon(Icons.file_open);
        },
        tag: data.id.toString(),
        child: Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Stack(
              children: [
                PullDownButton(
                    itemBuilder: (context) => [
                          PullDownMenuItem(
                            title: 'نسخ',
                            subtitle: 'نسخ الكود الى الحافظة',
                            onTap: () {
                              Clipboard.setData(ClipboardData(
                                      text: '${data.id}'.toString()))
                                  .then((_) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        dismissDirection:
                                            DismissDirection.horizontal,
                                        backgroundColor: Colors.green[900],
                                        content: const Center(
                                          child: Text("تم النسخ الى الحافظة",
                                              style: TextStyle(
                                                  // fontSize: 10,
                                                  color: Color.fromARGB(
                                                      255, 255, 255, 255))),
                                        )));
                              });
                            },
                            icon: CupertinoIcons.doc_on_clipboard,
                          ),
                          PullDownMenuItem(
                            onTap: () {
                              BlocProvider.of<OnePhaseCubit>(context)
                                  .deleteByID(data.id.toString());
                            },
                            subtitle: 'الحذف من الهاتف و الانترنت',
                            title: 'حذف',
                            isDestructive: true,
                            icon: CupertinoIcons.delete,
                          ),
                        ],
                    buttonBuilder: (context, showMenu) => GestureDetector(
                        onLongPress: () {
                          showMenu();
                        },
                        child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 3,
                                      blurStyle: BlurStyle.normal,
                                      color: Color.fromARGB(255, 131, 98, 98))
                                ],
                                color: const Color.fromARGB(255, 255, 255, 255),
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Stack(children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      data.custName.toString(),
                                      style: const TextStyle(
                                          color: Colors.red,
                                          //   fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      data.motorName.toString(),
                                      style: const TextStyle(
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      data.date.toString(),
                                      style: const TextStyle(
                                        fontSize: 13,
                                      ),
                                    ),
                                    Wrap(
                                      children: [
                                        const Text(
                                          "عدد المجاري: ",
                                          style: TextStyle(
                                            fontSize: 13,
                                          ),
                                        ),
                                        Text(
                                          data.cylinderNum.toString(),
                                          style: const TextStyle(
                                            fontSize: 13,
                                          ),
                                        ),
                                        Text(
                                          " - القدرة: ${data.hP.toString()}حصان ",
                                          style: const TextStyle(
                                            fontSize: 13,
                                          ),
                                        ),
                                        Text(
                                          " - الطول: ${data.length.toString()}سم",
                                          style: const TextStyle(
                                            fontSize: 13,
                                          ),
                                        ),
                                        Text(
                                          " - القطر: ${data.diameter.toString()}سم",
                                          style: const TextStyle(
                                            fontSize: 13,
                                          ),
                                        ),
                                        Text(
                                          " - السرعة: ${data.speed}",
                                          style: const TextStyle(
                                            fontSize: 13,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ]),
                            )))),
                //                SizedBox()
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Offstage(
                        offstage: data.cO == true ? false : true,
                        child: const CircleAvatar(
                            radius: 12,
                            child: Icon(
                              Icons.gpp_good_outlined,
                              size: 20,
                              color: Color.fromARGB(255, 255, 0, 0),
                            )),
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      scheduleOnePhase.contains(data.id)
                          ? const CircleAvatar(
                              radius: 11,
                              backgroundColor: Colors.amber,
                              child: Icon(
                                Icons.access_time_rounded,
                                size: 18,
                                weight: Checkbox.width,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ))
                          : const CircleAvatar(
                              radius: 11,
                              backgroundColor: Color.fromARGB(255, 37, 168, 41),
                              child: Icon(
                                Icons.check,
                                size: 15,
                                color: Color.fromARGB(255, 255, 255, 255),
                              )),
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
