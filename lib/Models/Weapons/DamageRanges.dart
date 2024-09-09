import 'dart:convert';

DamageRanges damageRangesFromJson(String str) => DamageRanges.fromJson(json.decode(str));
String damageRangesToJson(DamageRanges data) => json.encode(data.toJson());
class DamageRanges {
  DamageRanges({
      num? rangeStartMeters, 
      num? rangeEndMeters, 
      num? headDamage, 
      num? bodyDamage, 
      num? legDamage,}){
    _rangeStartMeters = rangeStartMeters;
    _rangeEndMeters = rangeEndMeters;
    _headDamage = headDamage;
    _bodyDamage = bodyDamage;
    _legDamage = legDamage;
}

  DamageRanges.fromJson(dynamic json) {
    _rangeStartMeters = json['rangeStartMeters'];
    _rangeEndMeters = json['rangeEndMeters'];
    _headDamage = json['headDamage'];
    _bodyDamage = json['bodyDamage'];
    _legDamage = json['legDamage'];
  }
  num? _rangeStartMeters;
  num? _rangeEndMeters;
  num? _headDamage;
  num? _bodyDamage;
  num? _legDamage;

  num? get rangeStartMeters => _rangeStartMeters;
  num? get rangeEndMeters => _rangeEndMeters;
  num? get headDamage => _headDamage;
  num? get bodyDamage => _bodyDamage;
  num? get legDamage => _legDamage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['rangeStartMeters'] = _rangeStartMeters;
    map['rangeEndMeters'] = _rangeEndMeters;
    map['headDamage'] = _headDamage;
    map['bodyDamage'] = _bodyDamage;
    map['legDamage'] = _legDamage;
    return map;
  }

}