import 'ValoMap.dart';

class MapsResponse {
  MapsResponse({
      num? status, 
      List<ValoMap>? data,}){
    _status = status;
    _data = data;
}

  MapsResponse.fromJson(dynamic json) {
    _status = json['status'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(ValoMap.fromJson(v));
      });
    }
  }
  num? _status;
  List<ValoMap>? _data;

  num? get status => _status;
  List<ValoMap>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}