import 'dart:convert';

Levels levelsFromJson(String str) => Levels.fromJson(json.decode(str));
String levelsToJson(Levels data) => json.encode(data.toJson());
class Levels {
  Levels({
      String? uuid, 
      String? displayName, 
      dynamic levelItem, 
      String? displayIcon, 
      dynamic streamedVideo, 
      String? assetPath,}){
    _uuid = uuid;
    _displayName = displayName;
    _levelItem = levelItem;
    _displayIcon = displayIcon;
    _streamedVideo = streamedVideo;
    _assetPath = assetPath;
}

  Levels.fromJson(dynamic json) {
    _uuid = json['uuid'];
    _displayName = json['displayName'];
    _levelItem = json['levelItem'];
    _displayIcon = json['displayIcon'];
    _streamedVideo = json['streamedVideo'];
    _assetPath = json['assetPath'];
  }
  String? _uuid;
  String? _displayName;
  dynamic _levelItem;
  String? _displayIcon;
  dynamic _streamedVideo;
  String? _assetPath;

  String? get uuid => _uuid;
  String? get displayName => _displayName;
  dynamic get levelItem => _levelItem;
  String? get displayIcon => _displayIcon;
  dynamic get streamedVideo => _streamedVideo;
  String? get assetPath => _assetPath;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['uuid'] = _uuid;
    map['displayName'] = _displayName;
    map['levelItem'] = _levelItem;
    map['displayIcon'] = _displayIcon;
    map['streamedVideo'] = _streamedVideo;
    map['assetPath'] = _assetPath;
    return map;
  }

}