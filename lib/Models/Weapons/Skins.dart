import 'Chromas.dart';
import 'Levels.dart';
import 'dart:convert';

Skins skinsFromJson(String str) => Skins.fromJson(json.decode(str));
String skinsToJson(Skins data) => json.encode(data.toJson());
class Skins {
  Skins({
      String? uuid, 
      String? displayName, 
      String? themeUuid, 
      String? contentTierUuid, 
      String? displayIcon, 
      dynamic wallpaper, 
      String? assetPath, 
      List<Chromas>? chromas, 
      List<Levels>? levels,}){
    _uuid = uuid;
    _displayName = displayName;
    _themeUuid = themeUuid;
    _contentTierUuid = contentTierUuid;
    _displayIcon = displayIcon;
    _wallpaper = wallpaper;
    _assetPath = assetPath;
    _chromas = chromas;
    _levels = levels;
}

  Skins.fromJson(dynamic json) {
    _uuid = json['uuid'];
    _displayName = json['displayName'];
    _themeUuid = json['themeUuid'];
    _contentTierUuid = json['contentTierUuid'];
    _displayIcon = json['displayIcon'];
    _wallpaper = json['wallpaper'];
    _assetPath = json['assetPath'];
    if (json['chromas'] != null) {
      _chromas = [];
      json['chromas'].forEach((v) {
        _chromas?.add(Chromas.fromJson(v));
      });
    }
    if (json['levels'] != null) {
      _levels = [];
      json['levels'].forEach((v) {
        _levels?.add(Levels.fromJson(v));
      });
    }
  }
  String? _uuid;
  String? _displayName;
  String? _themeUuid;
  String? _contentTierUuid;
  String? _displayIcon;
  dynamic _wallpaper;
  String? _assetPath;
  List<Chromas>? _chromas;
  List<Levels>? _levels;

  String? get uuid => _uuid;
  String? get displayName => _displayName;
  String? get themeUuid => _themeUuid;
  String? get contentTierUuid => _contentTierUuid;
  String? get displayIcon => _displayIcon;
  dynamic get wallpaper => _wallpaper;
  String? get assetPath => _assetPath;
  List<Chromas>? get chromas => _chromas;
  List<Levels>? get levels => _levels;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['uuid'] = _uuid;
    map['displayName'] = _displayName;
    map['themeUuid'] = _themeUuid;
    map['contentTierUuid'] = _contentTierUuid;
    map['displayIcon'] = _displayIcon;
    map['wallpaper'] = _wallpaper;
    map['assetPath'] = _assetPath;
    if (_chromas != null) {
      map['chromas'] = _chromas?.map((v) => v.toJson()).toList();
    }
    if (_levels != null) {
      map['levels'] = _levels?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}