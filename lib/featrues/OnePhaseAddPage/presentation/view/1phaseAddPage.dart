//import 'dart:developer';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:x_coil/featrues/OnePhaseAddPage/data/models/onePhaseObject.dart';
import 'package:x_coil/featrues/OnePhaseAddPage/presentation/view_models/widgets/Textfieldmodel.dart';

import '../../../../blocs/Onephase_cubit/OnePhase_cubit.dart';

class OnePhaseAddPage extends StatefulWidget {
  const OnePhaseAddPage({Key? key}) : super(key: key);

  @override
  State<OnePhaseAddPage> createState() => _OnePhaseAddPageState();
}

class _OnePhaseAddPageState extends State<OnePhaseAddPage> {
  OnePhaseObject objectbuild() {
    var id =
        "${DateTime.now().day}${DateTime.now().month}${DateTime.now().year}userName${DateTime.now().hour}${DateTime.now().minute}${DateTime.now().second}${DateTime.now().microsecond}";

    String date =
        '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}';
    setState(() {});
    return OnePhaseObject(
        id: id,
        motorName: MotorNameController.text,
        custName: CustNameController.text,
        hP: HP.text,
        cylinderNum: CylinderNum.text,
        length: Length.text,
        diameter: Diameter.text,
        cyWidth: CyWidth.text,
        crona: Crona.text,
        speed: Speed.text,
        startCap: StartCap.text,
        runCap: RunCap.text,
        runDiameter: RunDiameter.text,
        startDiameter: StartDiameter.text,
        evenORodd: evenORodd,
        cO: CO,
        publicShare: publicShare,
        notes: Notes.text,
        date: date,
        one1: one_1.text,
        one2: one_2.text,
        one3: one_3.text,
        one4: one_4.text,
        one5: one_5.text,
        one6: one_6.text,
        one7: one_7.text,
        one8: one_8.text,
        one9: one_9.text,
        one10: one_10.text,
        one11: one_11.text,
        one12: one_12.text,
        one13: one_13.text,
        one14: one_14.text,
        one15: one_16.text,
        one16: one_16.text,
        two1: two_1.text,
        two2: two_2.text,
        two3: two_3.text,
        two4: two_4.text,
        two5: two_5.text,
        two6: two_6.text,
        two7: two_7.text,
        two8: two_8.text,
        two9: two_9.text,
        two10: two_10.text,
        two11: two_11.text,
        two12: two_12.text,
        two13: two_13.text,
        two14: two_14.text,
        two15: two_15.text,
        two16: two_16.text);
  }

  final TextEditingController MotorNameController = TextEditingController();
  final TextEditingController CustNameController = TextEditingController();
  final TextEditingController HP = TextEditingController();
  final TextEditingController CylinderNum = TextEditingController();
  final TextEditingController Length = TextEditingController();
  final TextEditingController Diameter = TextEditingController();
  final TextEditingController CyWidth = TextEditingController();
  final TextEditingController Crona = TextEditingController();
  final TextEditingController Speed = TextEditingController();
  final TextEditingController StartCap = TextEditingController();
  final TextEditingController RunCap = TextEditingController();
  final TextEditingController RunDiameter = TextEditingController();
  final TextEditingController StartDiameter = TextEditingController();
  final TextEditingController Notes = TextEditingController();

  final TextEditingController one_1 = TextEditingController();
  final TextEditingController one_2 = TextEditingController();
  final TextEditingController one_3 = TextEditingController();
  final TextEditingController one_4 = TextEditingController();
  final TextEditingController one_5 = TextEditingController();
  final TextEditingController one_6 = TextEditingController();
  final TextEditingController one_7 = TextEditingController();
  final TextEditingController one_8 = TextEditingController();
  final TextEditingController one_9 = TextEditingController();
  final TextEditingController one_10 = TextEditingController();
  final TextEditingController one_11 = TextEditingController();
  final TextEditingController one_12 = TextEditingController();
  final TextEditingController one_13 = TextEditingController();
  final TextEditingController one_14 = TextEditingController();
  final TextEditingController one_15 = TextEditingController();
  final TextEditingController one_16 = TextEditingController();
  final TextEditingController two_1 = TextEditingController();
  final TextEditingController two_2 = TextEditingController();
  final TextEditingController two_3 = TextEditingController();
  final TextEditingController two_4 = TextEditingController();
  final TextEditingController two_5 = TextEditingController();
  final TextEditingController two_6 = TextEditingController();
  final TextEditingController two_7 = TextEditingController();
  final TextEditingController two_8 = TextEditingController();
  final TextEditingController two_9 = TextEditingController();
  final TextEditingController two_10 = TextEditingController();
  final TextEditingController two_11 = TextEditingController();
  final TextEditingController two_12 = TextEditingController();
  final TextEditingController two_13 = TextEditingController();
  final TextEditingController two_14 = TextEditingController();
  final TextEditingController two_15 = TextEditingController();
  final TextEditingController two_16 = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    MotorNameController.dispose();
    CustNameController.dispose();
    HP.dispose();
    CylinderNum.dispose();
    Length.dispose();
    Diameter.dispose();
    CyWidth.dispose();
    Crona.dispose();
    Speed.dispose();
    StartCap.dispose();
    RunCap.dispose();
    RunDiameter.dispose();
    StartDiameter.dispose();
    Notes.dispose();
    one_1.dispose();
    one_2.dispose();
    one_3.dispose();
    one_4.dispose();
    one_5.dispose();
    one_6.dispose();
    one_7.dispose();
    one_8.dispose();
    one_9.dispose();
    one_10.dispose();
    one_11.dispose();
    one_12.dispose();
    one_13.dispose();
    one_14.dispose();
    one_15.dispose();
    one_16.dispose();

    two_1.dispose();
    two_2.dispose();
    two_3.dispose();
    two_4.dispose();
    two_5.dispose();
    two_6.dispose();
    two_7.dispose();
    two_8.dispose();
    two_9.dispose();
    two_10.dispose();
    two_11.dispose();
    two_12.dispose();
    two_13.dispose();
    two_14.dispose();
    two_15.dispose();
    two_16.dispose();

    super.dispose();
  }

  bool evenORodd = true;
  bool CO = false;
  bool publicShare = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        //  foregroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          "إضافة محرك واحد فاز",
          style: TextStyle(color: Colors.black, fontFamily: "cairo"),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "ادخل بيانات المحرك ( مع مراعاة ان الاطوال بالسنتيمترات ): ",
                  style: TextStyle(fontFamily: "cairo", fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    TextFieldModel(
                      label: "اسم العميل :",
                      Controller: CustNameController,
                      align: TextAlign.start,
                      flix: 1,
                      keyboardType: TextInputType.text,
                    )
                  ],
                ),
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "(إسم العميل يظهر لك انت فقط.)",
                      style: TextStyle(
                          color: Color.fromARGB(255, 228, 0, 0),
                          fontFamily: "cairo",
                          fontSize: 13),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    TextFieldModel(
                      keyboardType: TextInputType.text,
                      label: "اسم الموتور :",
                      Controller: MotorNameController,
                      align: TextAlign.start,
                      flix: 4,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    TextFieldModel(
                        keyboardType: TextInputType.number,
                        label: "HP",
                        Controller: HP,
                        align: TextAlign.start,
                        flix: 1),
                  ],
                ),
              ),

              ///////// HP
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: [
                  TextFieldModel(
                      label: 'عدد المجاري',
                      Controller: CylinderNum,
                      align: TextAlign.center,
                      keyboardType: TextInputType.number,
                      flix: 2),
                  const SizedBox(
                    width: 16,
                  ),
                  TextFieldModel(
                      label: 'الطول',
                      Controller: Length,
                      align: TextAlign.center,
                      keyboardType: TextInputType.number,
                      flix: 1),
                  const SizedBox(
                    width: 16,
                  ),
                  TextFieldModel(
                      label: 'القطر',
                      Controller: Diameter,
                      align: TextAlign.center,
                      keyboardType: TextInputType.number,
                      flix: 1),
                ]),
              ),
              ///////////////////////////////////////////////////////////////////////////
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFieldModel(
                        label: 'عرض المجرى',
                        Controller: CyWidth,
                        align: TextAlign.center,
                        keyboardType: TextInputType.number,
                        flix: 2),
                    const SizedBox(
                      width: 16,
                    ),
                    TextFieldModel(
                        label: 'كرونا',
                        Controller: Crona,
                        align: TextAlign.center,
                        keyboardType: TextInputType.number,
                        flix: 1),
                    const SizedBox(
                      width: 16,
                    ),
                    TextFieldModel(
                        label: 'Speed',
                        Controller: Speed,
                        align: TextAlign.center,
                        keyboardType: TextInputType.number,
                        flix: 1),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: [
                  TextFieldModel(
                      label: 'مكثف البدء μF',
                      Controller: StartCap,
                      align: TextAlign.center,
                      keyboardType: TextInputType.number,
                      flix: 1),
                  const SizedBox(
                    width: 16,
                  ),
                  TextFieldModel(
                      label: 'مكثف التشغيل μF',
                      Controller: RunCap,
                      align: TextAlign.center,
                      keyboardType: TextInputType.number,
                      flix: 1),
                ]),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: [
                  TextFieldModel(
                      label: 'قطر سلك التشغيل',
                      Controller: RunDiameter,
                      align: TextAlign.center,
                      keyboardType: TextInputType.number,
                      flix: 1),
                  const SizedBox(
                    width: 16,
                  ),
                  TextFieldModel(
                      label: 'قطر سلك التقويم',
                      Controller: StartDiameter,
                      align: TextAlign.center,
                      keyboardType: TextInputType.number,
                      flix: 1),
                ]),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 240, 20, 4), width: 2),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "خطوة فردية",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontFamily: "cairo",
                                  fontSize: 13),
                            ),
                            CupertinoSwitch(
                              activeColor: Colors.red,
                              trackColor: Colors.red,
                              value: evenORodd,
                              onChanged: (value) {
                                setState(() {
                                  evenORodd = value;
                                });
                              },
                            ),
                            const Text(
                              "خطوة زوجية",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontFamily: "cairo",
                                  fontSize: 13),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Divider(
                          thickness: 2,
                          color: Color.fromARGB(255, 179, 179, 179),
                        ),
                      ),
                      const SizedBox(height: 1),
                      Offstage(
                        offstage: !evenORodd,
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "ملفات التشغيل",
                                style: TextStyle(
                                    fontFamily: "cairo",
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  TextFieldModel(
                                      label: '1 : 4',
                                      Controller: two_1,
                                      align: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                      flix: 1),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  TextFieldModel(
                                      label: '1 : 6',
                                      Controller: two_2,
                                      align: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                      flix: 1),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  TextFieldModel(
                                      label: '1 : 8',
                                      Controller: two_3,
                                      align: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                      flix: 1),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  TextFieldModel(
                                      label: '1 : 10',
                                      Controller: two_4,
                                      align: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                      flix: 1),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 12.0, right: 12, left: 12),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  TextFieldModel(
                                      label: '1 : 12',
                                      Controller: two_5,
                                      align: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                      flix: 1),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  TextFieldModel(
                                      label: '1 : 14',
                                      Controller: two_6,
                                      align: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                      flix: 1),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  TextFieldModel(
                                      label: '1 : 16',
                                      Controller: two_7,
                                      align: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                      flix: 1),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  TextFieldModel(
                                      label: '1 : 18',
                                      Controller: two_8,
                                      align: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                      flix: 1),
                                ],
                              ),
                            ),
                            const SizedBox(height: 12),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Divider(
                                thickness: 2,
                                color: Color.fromARGB(255, 179, 179, 179),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "ملفات التقويم",
                                style: TextStyle(
                                    fontFamily: "cairo",
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  TextFieldModel(
                                      label: '1 : 4',
                                      Controller: two_9,
                                      align: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                      flix: 1),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  TextFieldModel(
                                      label: '1 : 6',
                                      Controller: two_10,
                                      align: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                      flix: 1),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  TextFieldModel(
                                      label: '1 : 8',
                                      Controller: two_11,
                                      align: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                      flix: 1),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  TextFieldModel(
                                      label: '1 : 10',
                                      Controller: two_12,
                                      align: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                      flix: 1),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 12.0, right: 12, left: 12),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  TextFieldModel(
                                      label: '1 : 12',
                                      Controller: two_13,
                                      align: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                      flix: 1),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  TextFieldModel(
                                      label: '1 : 14',
                                      Controller: two_14,
                                      align: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                      flix: 1),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  TextFieldModel(
                                      label: '1 : 16',
                                      Controller: two_15,
                                      align: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                      flix: 1),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  TextFieldModel(
                                      label: '1 : 18',
                                      Controller: two_16,
                                      align: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                      flix: 1),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Offstage(
                        offstage: evenORodd,
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "ملفات التشغيل",
                                style: TextStyle(
                                    fontFamily: "cairo",
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  TextFieldModel(
                                      label: '1 : 3',
                                      Controller: one_1,
                                      align: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                      flix: 1),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  TextFieldModel(
                                      label: '1 : 5',
                                      Controller: one_2,
                                      align: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                      flix: 1),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  TextFieldModel(
                                      label: '1 : 7',
                                      Controller: one_3,
                                      align: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                      flix: 1),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  TextFieldModel(
                                      label: '1 : 9',
                                      Controller: one_4,
                                      align: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                      flix: 1),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 12.0, right: 12, left: 12),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  TextFieldModel(
                                      label: '1 : 11',
                                      Controller: one_5,
                                      align: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                      flix: 1),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  TextFieldModel(
                                      label: '1 : 13',
                                      Controller: one_6,
                                      align: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                      flix: 1),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  TextFieldModel(
                                      label: '1 : 15',
                                      Controller: one_7,
                                      align: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                      flix: 1),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  TextFieldModel(
                                      label: '1 : 17',
                                      Controller: one_8,
                                      align: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                      flix: 1),
                                ],
                              ),
                            ),
                            const SizedBox(height: 12),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Divider(
                                thickness: 2,
                                color: Color.fromARGB(255, 179, 179, 179),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "ملفات التقويم",
                                style: TextStyle(
                                    fontFamily: "cairo",
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  TextFieldModel(
                                      label: '1 : 3',
                                      Controller: one_9,
                                      align: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                      flix: 1),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  TextFieldModel(
                                      label: '1 : 5',
                                      Controller: one_10,
                                      align: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                      flix: 1),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  TextFieldModel(
                                      label: '1 : 7',
                                      Controller: one_11,
                                      align: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                      flix: 1),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  TextFieldModel(
                                      label: '1 : 9',
                                      Controller: one_12,
                                      align: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                      flix: 1),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 12.0, right: 12, left: 12),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  TextFieldModel(
                                      label: '1 : 11',
                                      Controller: one_13,
                                      align: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                      flix: 1),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  TextFieldModel(
                                      label: '1 : 13',
                                      Controller: one_14,
                                      align: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                      flix: 1),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  TextFieldModel(
                                      label: '1 : 15',
                                      Controller: one_15,
                                      align: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                      flix: 1),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  TextFieldModel(
                                      label: '1 : 17',
                                      Controller: one_16,
                                      align: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                      flix: 1),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      //////////////////////////////////////////////////////////////////////////////////////
                      const SizedBox(height: 12),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: 5,
                  minLines: null,
                  // expands: true,
                  controller: Notes,
                  cursorColor: const Color.fromARGB(255, 240, 20, 4),
                  decoration: InputDecoration(
                    labelText: 'ملاحظات',
                    labelStyle: const TextStyle(
                        color: Colors.black, fontFamily: "cairo"),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 177, 177, 177),
                          width: 2,
                        )),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 240, 20, 4),
                          width: 2,
                        )),
                  ),
                  onChanged: (Text) {
                    setState(() {});
                  },
                  style: const TextStyle(
                      fontFamily: "cairo", fontSize: 16, color: Colors.black),
                ),
              ),

              SwitchListTile(
                title: const Text(
                  "بيانات الشركة المصنعة ؟",
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: "cairo",
                  ),
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                activeTrackColor: Colors.red,
                inactiveTrackColor: Colors.black54,
                thumbColor:
                    MaterialStateColor.resolveWith((states) => Colors.white),
                value: CO,
                onChanged: (value) {
                  setState(() {
                    CO = value;
                  });
                },
              ),
              SwitchListTile(
                title: const Text(
                  "المشاركة مع العامة ؟",
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: "cairo",
                  ),
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                activeTrackColor: Colors.red,
                inactiveTrackColor: Colors.black54,
                thumbColor:
                    MaterialStateColor.resolveWith((states) => Colors.white),
                value: publicShare,
                onChanged: (value) {
                  setState(() {
                    publicShare = value;
                  });
                },
              ),
              const SizedBox(height: 12),

              Column(
                //    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 226, 37, 23),
                          borderRadius: BorderRadius.circular(15)),
                      width: MediaQuery.of(context).size.width > 500
                          ? null
                          : double.infinity,
                      child: BlocBuilder<OnePhaseCubit, OnePhaseState>(
                        builder: (context, state) {
                          return TextButton(
                              onLongPress: () {
                                log("erased");
                              },
                              onPressed: () {
                                if (MotorNameController.text == '' ||
                                    CustNameController.text == '' ||
                                    HP.text == '' ||
                                    Length.text == '' ||
                                    Diameter.text == '' ||
                                    CylinderNum.text == '') {
                                  log("please complete data");

                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(const SnackBar(
                                    backgroundColor:
                                        Color.fromARGB(255, 184, 12, 0),
                                    content: Text(
                                      'اكمل البيانات الاساسية',
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontFamily: "cairo"),
                                    ),
                                  ));
                                } else {
                                  BlocProvider.of<OnePhaseCubit>(context)
                                      .onePhaselocalDataSave(objectbuild());

                                  if (state is AddCoilFailure) {
                                    //Navigator.pop(context);
                                  }
                                }
                              },
                              child: const Text(
                                'حفظ',
                                style: TextStyle(
                                    fontFamily: "cairo",
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ));
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          //   border: Border.all(color: Colors.red, width: 2),
                          borderRadius: BorderRadius.circular(15)),
                      width: double.infinity,
                      child: TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            "إلغاء",
                            style: TextStyle(
                                fontFamily: "cairo",
                                color: Color.fromARGB(255, 245, 0, 0)),
                          )),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
