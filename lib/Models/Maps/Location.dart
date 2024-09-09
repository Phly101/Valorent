class Location {
  Location({
      num? x, 
      num? y,}){
    _x = x;
    _y = y;
}

  Location.fromJson(dynamic json) {
    _x = json['x'];
    _y = json['y'];
  }
  num? _x;
  num? _y;

  num? get x => _x;
  num? get y => _y;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['x'] = _x;
    map['y'] = _y;
    return map;
  }

}