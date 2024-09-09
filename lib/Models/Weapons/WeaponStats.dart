import 'AdsStats.dart';
import 'DamageRanges.dart';
import 'dart:convert';

WeaponStats weaponStatsFromJson(String str) => WeaponStats.fromJson(json.decode(str));
String weaponStatsToJson(WeaponStats data) => json.encode(data.toJson());
class WeaponStats {
  WeaponStats({
      num? fireRate, 
      num? magazineSize, 
      num? runSpeedMultiplier, 
      num? equipTimeSeconds, 
      num? reloadTimeSeconds, 
      num? firstBulletAccuracy, 
      num? shotgunPelletCount, 
      String? wallPenetration, 
      String? feature, 
      dynamic fireMode, 
      String? altFireType, 
      AdsStats? adsStats, 
      dynamic altShotgunStats, 
      dynamic airBurstStats, 
      List<DamageRanges>? damageRanges,}){
    _fireRate = fireRate;
    _magazineSize = magazineSize;
    _runSpeedMultiplier = runSpeedMultiplier;
    _equipTimeSeconds = equipTimeSeconds;
    _reloadTimeSeconds = reloadTimeSeconds;
    _firstBulletAccuracy = firstBulletAccuracy;
    _shotgunPelletCount = shotgunPelletCount;
    _wallPenetration = wallPenetration;
    _feature = feature;
    _fireMode = fireMode;
    _altFireType = altFireType;
    _adsStats = adsStats;
    _altShotgunStats = altShotgunStats;
    _airBurstStats = airBurstStats;
    _damageRanges = damageRanges;
}

  WeaponStats.fromJson(dynamic json) {
    _fireRate = json['fireRate'];
    _magazineSize = json['magazineSize'];
    _runSpeedMultiplier = json['runSpeedMultiplier'];
    _equipTimeSeconds = json['equipTimeSeconds'];
    _reloadTimeSeconds = json['reloadTimeSeconds'];
    _firstBulletAccuracy = json['firstBulletAccuracy'];
    _shotgunPelletCount = json['shotgunPelletCount'];
    _wallPenetration = json['wallPenetration'];
    _feature = json['feature'];
    _fireMode = json['fireMode'];
    _altFireType = json['altFireType'];
    _adsStats = json['adsStats'] != null ? AdsStats.fromJson(json['adsStats']) : null;
    _altShotgunStats = json['altShotgunStats'];
    _airBurstStats = json['airBurstStats'];
    if (json['damageRanges'] != null) {
      _damageRanges = [];
      json['damageRanges'].forEach((v) {
        _damageRanges?.add(DamageRanges.fromJson(v));
      });
    }
  }
  num? _fireRate;
  num? _magazineSize;
  num? _runSpeedMultiplier;
  num? _equipTimeSeconds;
  num? _reloadTimeSeconds;
  num? _firstBulletAccuracy;
  num? _shotgunPelletCount;
  String? _wallPenetration;
  String? _feature;
  dynamic _fireMode;
  String? _altFireType;
  AdsStats? _adsStats;
  dynamic _altShotgunStats;
  dynamic _airBurstStats;
  List<DamageRanges>? _damageRanges;

  num? get fireRate => _fireRate;
  num? get magazineSize => _magazineSize;
  num? get runSpeedMultiplier => _runSpeedMultiplier;
  num? get equipTimeSeconds => _equipTimeSeconds;
  num? get reloadTimeSeconds => _reloadTimeSeconds;
  num? get firstBulletAccuracy => _firstBulletAccuracy;
  num? get shotgunPelletCount => _shotgunPelletCount;
  String? get wallPenetration => _wallPenetration;
  String? get feature => _feature;
  dynamic get fireMode => _fireMode;
  String? get altFireType => _altFireType;
  AdsStats? get adsStats => _adsStats;
  dynamic get altShotgunStats => _altShotgunStats;
  dynamic get airBurstStats => _airBurstStats;
  List<DamageRanges>? get damageRanges => _damageRanges;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['fireRate'] = _fireRate;
    map['magazineSize'] = _magazineSize;
    map['runSpeedMultiplier'] = _runSpeedMultiplier;
    map['equipTimeSeconds'] = _equipTimeSeconds;
    map['reloadTimeSeconds'] = _reloadTimeSeconds;
    map['firstBulletAccuracy'] = _firstBulletAccuracy;
    map['shotgunPelletCount'] = _shotgunPelletCount;
    map['wallPenetration'] = _wallPenetration;
    map['feature'] = _feature;
    map['fireMode'] = _fireMode;
    map['altFireType'] = _altFireType;
    if (_adsStats != null) {
      map['adsStats'] = _adsStats?.toJson();
    }
    map['altShotgunStats'] = _altShotgunStats;
    map['airBurstStats'] = _airBurstStats;
    if (_damageRanges != null) {
      map['damageRanges'] = _damageRanges?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}