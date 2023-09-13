import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_down_button/pull_down_button.dart';
import 'package:x_coil/blocs/Onephase_cubit/OnePhase_cubit.dart';
import 'package:x_coil/featrues/OnePhaseAddPage/data/models/onePhaseObject.dart';

// ignore: camel_case_types
class onePhaseListItem extends StatelessWidget {
  onePhaseListItem({Key? key, required this.data}) : super(key: key);

  final OnePhaseObject data;

  @override
  Widget build(BuildContext context) {
    List scheduleOnePhase =
        BlocProvider.of<OnePhaseCubit>(context).scheduleOnePhase;
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Stack(
          children: [
            Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(10)),
                child: PullDownButton(
                    itemBuilder: (context) => [
                          PullDownMenuItem(
                            title: 'نسخ',
                            subtitle: 'نسخ الكود الى الحافظة',
                            onTap: () {
                              Clipboard.setData(
                                      ClipboardData(text: 'll'.toString()))
                                  .then((_) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        dismissDirection:
                                            DismissDirection.horizontal,
                                        backgroundColor: Colors.green[900],
                                        content: const Center(
                                          child: Text("تم النسخ الى الحافظة",
                                              style: TextStyle(
                                                  fontSize: 10,
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
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Stack(children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  data.custName.toString(),
                                  style: TextStyle(
                                      color: Colors.red,
                                      //   fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  data.motorName.toString(),
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  data.date.toString(),
                                  style: TextStyle(
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            )
                          ]),
                        )))),
            //                SizedBox()
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: scheduleOnePhase.contains(data.id)
                    ? CircleAvatar(
                        child: Icon(
                          Icons.upload,
                          size: 15,
                          color: Colors.black,
                        ),
                        radius: 10,
                        backgroundColor: Colors.amber)
                    : CircleAvatar(
                        child: Icon(
                          Icons.check,
                          size: 15,
                          color: const Color.fromARGB(255, 255, 255, 255),
                        ),
                        radius: 10,
                        backgroundColor: Colors.green),
              ),
            )
          ],
        ));
  }
}
