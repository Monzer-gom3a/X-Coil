import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:x_coil/featrues/OnePhaseAddPage/data/models/onePhaseObject.dart';
import 'package:http/http.dart' as http;

part 'OnePhase_Add_state.dart';

class AddOnePhaseCubit extends Cubit<AddOnePhaseState> {
  AddOnePhaseCubit() : super(AddCoilInitial());

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
    }  catch (e) {
      emit(AddCoilFailure(e.toString()));
    }
  }
/*   addNote(NoteModel note) async {
    note.color = color.value;
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  } */
}
