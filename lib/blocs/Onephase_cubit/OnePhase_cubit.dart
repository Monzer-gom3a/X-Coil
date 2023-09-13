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
  List<String> scheduleOnePhase = [];
  List data = [];

  getCount() {
    List onephaseKeys = [...onePhaseBox.getKeys()];
    count = onephaseKeys.length;
  }

  void fetchAllOnePhaseData() {
    data = [...(onePhaseBox.getValues())];

    count = data.length;
    if (data.isNotEmpty) {
      emit(DBHasData());
    } else {
      emit(DBHasNoData());
    }
  }

  void deleteByID(String id) {
    onePhaseBox.remove(id);
    fetchAllOnePhaseData();
  }

  onePhaselocalDataSave(OnePhaseObject data) {
    onePhaseBox.write(data.id.toString(), jsonEncode(data));

    List onephaseKeys = [...onePhaseBox.getKeys()];
    count = onephaseKeys.length;
    scheduleOnePhase.add(data.id.toString());
    userBox.write("scheduleOnePhase", jsonEncode(scheduleOnePhase));
    fetchAllOnePhaseData();
    debugPrint(jsonDecode(userBox.read('scheduleOnePhase')).toString());
  }

  Future sendData(OnePhaseObject datas) async {
    emit(AddCoilLoading());
    try {
      var res1 = await http
          .post(Uri.parse("http://192.168.1.6/X-Coil/addCoil.php"), body: {
        "userID": "011162003491",
        "motorID": datas.id,
        "command": jsonEncode(datas.toJson()),
        "phase": "1",
        "public": datas.publicShare.toString(),
        "factoryState": datas.cO.toString(),
        "length": datas.length,
        "diameter": datas.diameter,
        "cylenderNum": datas.cylinderNum,
        "HP": datas.hP
      }); //sending post request with header data
      if (res1.statusCode == 200) {
        var premiumList = jsonDecode(res1.body);
        var data = premiumList['data'];
        emit(AddCoilSuccess());
      }
    } catch (e) {
      emit(AddCoilFailure(e.toString()));
    }
  }
}
