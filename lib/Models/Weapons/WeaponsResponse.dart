import 'Data.dart';
import 'dart:convert';

WeaponsResponse weaponsResponseFromJson(String str) => WeaponsResponse.fromJson(json.decode(str));
String weaponsResponseToJson(WeaponsResponse data) => json.encode(data.toJson());
class WeaponsResponse {
  WeaponsResponse({
      num? status, 
      List<Weapons>? data,}){
    _status = status;
    _data = data;
}

  WeaponsResponse.fromJson(dynamic json) {
    _status = json['status'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Weapons.fromJson(v));
      });
    }
  }
  num? _status;
  List<Weapons>? _data;

  num? get status => _status;
  List<Weapons>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}