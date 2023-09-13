import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pull_down_button/pull_down_button.dart';
import 'package:x_coil/featrues/OnePhaseAddPage/data/models/onePhaseObject.dart';

// ignore: camel_case_types
class onePhaseListItem extends StatefulWidget {
  onePhaseListItem({Key? key, required this.data}) : super(key: key);

  final OnePhaseObject data;

  @override
  State<onePhaseListItem> createState() => _onePhaseListItemState();
}

class _onePhaseListItemState extends State<onePhaseListItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Container(
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
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                dismissDirection: DismissDirection.horizontal,
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
                        onTap: () {},
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
                              widget.data.custName.toString(),
                              style: TextStyle(
                                  color: Colors.red,
                                  //   fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'كالبيدا',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "لا يوجد تاريخ",
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                          ],
                        )
                      ]),
                    )))));
  }
}
