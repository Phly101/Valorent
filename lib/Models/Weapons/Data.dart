import 'WeaponStats.dart';
import 'ShopData.dart';
import 'Skins.dart';
import 'dart:convert';

Weapons dataFromJson(String str) => Weapons.fromJson(json.decode(str));

String dataToJson(Weapons data) => json.encode(data.toJson());

class Weapons {
  Weapons({
    String? uuid,
    String? displayName,
    String? category,
    String? defaultSkinUuid,
    String? displayIcon,
    String? killStreamIcon,
    String? assetPath,
    WeaponStats? weaponStats,
    ShopData? shopData,
    List<Skins>? skins,
  }) {
    _uuid = uuid;
    _displayName = displayName;
    _category = category;
    _defaultSkinUuid = defaultSkinUuid;
    _displayIcon = displayIcon;
    _killStreamIcon = killStreamIcon;
    _assetPath = assetPath;
    _weaponStats = weaponStats;
    _shopData = shopData;
    _skins = skins;
  }

  Weapons.fromJson(dynamic json) {
    _uuid = json['uuid'];
    _displayName = json['displayName'];
    _category = json['category'];
    _defaultSkinUuid = json['defaultSkinUuid'];
    _displayIcon = json['displayIcon'];
    _killStreamIcon = json['killStreamIcon'];
    _assetPath = json['assetPath'];
    _weaponStats = json['weaponStats'] != null
        ? WeaponStats.fromJson(json['weaponStats'])
        : null;
    _shopData =
        json['shopData'] != null ? ShopData.fromJson(json['shopData']) : null;
    if (json['skins'] != null) {
      _skins = [];
      json['skins'].forEach((v) {
        _skins?.add(Skins.fromJson(v));
      });
    }
  }

  String? _uuid;
  String? _displayName;
  String? _category;
  String? _defaultSkinUuid;
  String? _displayIcon;
  String? _killStreamIcon;
  String? _assetPath;
  WeaponStats? _weaponStats;
  ShopData? _shopData;
  List<Skins>? _skins;

  String? get uuid => _uuid;

  String? get displayName => _displayName;

  String? get category => _category;

  String? get defaultSkinUuid => _defaultSkinUuid;

  String? get displayIcon => _displayIcon;

  String? get killStreamIcon => _killStreamIcon;

  String? get assetPath => _assetPath;

  WeaponStats? get weaponStats => _weaponStats;

  ShopData? get shopData => _shopData;

  List<Skins>? get skins => _skins;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['uuid'] = _uuid;
    map['displayName'] = _displayName;
    map['category'] = _category;
    map['defaultSkinUuid'] = _defaultSkinUuid;
    map['displayIcon'] = _displayIcon;
    map['killStreamIcon'] = _killStreamIcon;
    map['assetPath'] = _assetPath;
    if (_weaponStats != null) {
      map['weaponStats'] = _weaponStats?.toJson();
    }
    if (_shopData != null) {
      map['shopData'] = _shopData?.toJson();
    }
    if (_skins != null) {
      map['skins'] = _skins?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}
