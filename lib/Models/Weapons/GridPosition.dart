import 'dart:convert';

GridPosition gridPositionFromJson(String str) => GridPosition.fromJson(json.decode(str));
String gridPositionToJson(GridPosition data) => json.encode(data.toJson());
class GridPosition {
  GridPosition({
      num? row, 
      num? column,}){
    _row = row;
    _column = column;
}

  GridPosition.fromJson(dynamic json) {
    _row = json['row'];
    _column = json['column'];
  }
  num? _row;
  num? _column;

  num? get row => _row;
  num? get column => _column;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['row'] = _row;
    map['column'] = _column;
    return map;
  }

}