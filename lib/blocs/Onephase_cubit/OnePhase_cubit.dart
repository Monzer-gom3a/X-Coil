import 'dart:async';
import 'dart:convert';
// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:x_coil/featrues/OnePhaseAddPage/data/models/onePhaseObject.dart';
import 'package:http/http.dart' as http;

part 'OnePhase_states.dart';

class OnePhaseCubit extends Cubit<OnePhaseState> {
  OnePhaseCubit() : super(AddCoilInitial());

  final onePhaseBox = GetStorage('OnePhaseCoils');
  final userBox = GetStorage('User');

  int count = 0;
  List scheduleOnePhase = [];
  List data = [];

  // ignore: non_constant_identifier_names
  scheduleOnePhase_service() {
    if (scheduleOnePhase.isEmpty) {
      debugPrint("List is empty");
    } else {
      upload_loop();
    }
  }

  // ignore: non_constant_identifier_names
  void upload_loop() {
    for (var i in scheduleOnePhase) {
      OnePhaseObject scheduleonephaseObject =
          OnePhaseObject.fromJson(jsonDecode(onePhaseBox.read(i)));
      sendData(scheduleonephaseObject);
    }
  }

  void fetchAllOnePhaseData() {
    data = [...(onePhaseBox.getValues())];
    scheduleOnePhase = userBox.read("scheduleOnePhase") != null
        ? jsonDecode(userBox.read("scheduleOnePhase"))
        : [];

    count = data.length;

    if (data.length != 0) {
      emit(DBHasData());
    } else {
      emit(DBHasNoData());
    }
  }

  void deleteByID(String id) {
    onePhaseBox.remove(id);
    scheduleOnePhase.remove(id);
    fetchAllOnePhaseData();
  }

  Future onePhaselocalDataSave(OnePhaseObject data) async {
    emit(AddCoilLoading());
    try {
      fetchAllOnePhaseData();
      await onePhaseBox.write(data.id.toString(), jsonEncode(data));
      scheduleOnePhase.add(data.id.toString());
      await userBox.write("scheduleOnePhase", jsonEncode(scheduleOnePhase));
      emit(AddCoilLocalSuccess());
      fetchAllOnePhaseData();
    } on Exception catch (e) {
      emit(AddCoilFailure(e.toString()));
    }
  }

  Future getCount() async {
    emit(AddCoilLoading());
    try {
      var res1 = await http
          .post(Uri.parse("http://192.168.1.14/X-Coil/addCoil.php"), body: {
        "userID": "01116200349",
      }); //sending post request with header data
      if (res1.statusCode == 200) {
        var premiumList = jsonDecode(res1.body);
        print(premiumList);
      }
    } catch (e) {
      emit(AddCoilFailure(e.toString()));
    }
  }

  Future sendData(OnePhaseObject data) async {
    emit(AddCoilLoading());
    try {
      var res1 = await http
          .post(Uri.parse("http://192.168.1.14/X-Coil/addCoil.php"), body: {
        "userID": "01116200349",
        "motorID": data.id.toString(),
        "command": jsonEncode(data.toJson()),
        "phase": "1",
        "public": data.publicShare.toString(),
        "factoryState": data.cO.toString(),
        "length": data.length.toString(),
        "diameter": data.diameter.toString(),
        "cylenderNum": data.cylinderNum.toString(),
        "HP": data.hP.toString()
      }); //sending post request with header data
      if (res1.statusCode == 200) {
        var premiumList = jsonDecode(res1.body);
        //    data = premiumList['data'];
        scheduleOnePhase.remove(data.id);
        await userBox.write("scheduleOnePhase", jsonEncode(scheduleOnePhase));
        fetchAllOnePhaseData();
        if (premiumList['success'] == false) {
          emit(DataHadBeenSavedRecntly());
        }

        print(premiumList);
      }
    } catch (e) {
      emit(AddCoilFailure(e.toString()));
    }
  }
}
