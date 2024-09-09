import 'dart:convert';

AdsStats adsStatsFromJson(String str) => AdsStats.fromJson(json.decode(str));
String adsStatsToJson(AdsStats data) => json.encode(data.toJson());
class AdsStats {
  AdsStats({
      num? zoomMultiplier, 
      num? fireRate, 
      num? runSpeedMultiplier, 
      num? burstCount, 
      num? firstBulletAccuracy,}){
    _zoomMultiplier = zoomMultiplier;
    _fireRate = fireRate;
    _runSpeedMultiplier = runSpeedMultiplier;
    _burstCount = burstCount;
    _firstBulletAccuracy = firstBulletAccuracy;
}

  AdsStats.fromJson(dynamic json) {
    _zoomMultiplier = json['zoomMultiplier'];
    _fireRate = json['fireRate'];
    _runSpeedMultiplier = json['runSpeedMultiplier'];
    _burstCount = json['burstCount'];
    _firstBulletAccuracy = json['firstBulletAccuracy'];
  }
  num? _zoomMultiplier;
  num? _fireRate;
  num? _runSpeedMultiplier;
  num? _burstCount;
  num? _firstBulletAccuracy;

  num? get zoomMultiplier => _zoomMultiplier;
  num? get fireRate => _fireRate;
  num? get runSpeedMultiplier => _runSpeedMultiplier;
  num? get burstCount => _burstCount;
  num? get firstBulletAccuracy => _firstBulletAccuracy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['zoomMultiplier'] = _zoomMultiplier;
    map['fireRate'] = _fireRate;
    map['runSpeedMultiplier'] = _runSpeedMultiplier;
    map['burstCount'] = _burstCount;
    map['firstBulletAccuracy'] = _firstBulletAccuracy;
    return map;
  }

}