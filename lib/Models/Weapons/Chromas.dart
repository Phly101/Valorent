import 'dart:convert';

Chromas chromasFromJson(String str) => Chromas.fromJson(json.decode(str));
String chromasToJson(Chromas data) => json.encode(data.toJson());
class Chromas {
  Chromas({
      String? uuid, 
      String? displayName, 
      dynamic displayIcon, 
      String? fullRender, 
      dynamic swatch, 
      dynamic streamedVideo, 
      String? assetPath,}){
    _uuid = uuid;
    _displayName = displayName;
    _displayIcon = displayIcon;
    _fullRender = fullRender;
    _swatch = swatch;
    _streamedVideo = streamedVideo;
    _assetPath = assetPath;
}

  Chromas.fromJson(dynamic json) {
    _uuid = json['uuid'];
    _displayName = json['displayName'];
    _displayIcon = json['displayIcon'];
    _fullRender = json['fullRender'];
    _swatch = json['swatch'];
    _streamedVideo = json['streamedVideo'];
    _assetPath = json['assetPath'];
  }
  String? _uuid;
  String? _displayName;
  dynamic _displayIcon;
  String? _fullRender;
  dynamic _swatch;
  dynamic _streamedVideo;
  String? _assetPath;

  String? get uuid => _uuid;
  String? get displayName => _displayName;
  dynamic get displayIcon => _displayIcon;
  String? get fullRender => _fullRender;
  dynamic get swatch => _swatch;
  dynamic get streamedVideo => _streamedVideo;
  String? get assetPath => _assetPath;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['uuid'] = _uuid;
    map['displayName'] = _displayName;
    map['displayIcon'] = _displayIcon;
    map['fullRender'] = _fullRender;
    map['swatch'] = _swatch;
    map['streamedVideo'] = _streamedVideo;
    map['assetPath'] = _assetPath;
    return map;
  }

}