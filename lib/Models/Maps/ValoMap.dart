import 'maps_details.dart';

class ValoMap {
  ValoMap({
    String? uuid,
    String? displayName,
    dynamic narrativeDescription,
    String? tacticalDescription,
    String? coordinates,
    String? displayIcon,
    String? listViewIcon,
    String? listViewIconTall,
    String? splash,
    String? stylizedBackgroundImage,
    String? premierBackgroundImage,
    String? assetPath,
    String? mapUrl,
    num? xMultiplier,
    num? yMultiplier,
    num? xScalarToAdd,
    num? yScalarToAdd,
    List<Callouts>? callouts,}) {
    _uuid = uuid;
    _displayName = displayName;
    _narrativeDescription = narrativeDescription;
    _tacticalDescription = tacticalDescription;
    _coordinates = coordinates;
    _displayIcon = displayIcon;
    _listViewIcon = listViewIcon;
    _listViewIconTall = listViewIconTall;
    _splash = splash;
    _stylizedBackgroundImage = stylizedBackgroundImage;
    _premierBackgroundImage = premierBackgroundImage;
    _assetPath = assetPath;
    _mapUrl = mapUrl;
    _xMultiplier = xMultiplier;
    _yMultiplier = yMultiplier;
    _xScalarToAdd = xScalarToAdd;
    _yScalarToAdd = yScalarToAdd;
    _callouts = callouts;
  }

  ValoMap.fromJson(dynamic json) {
    _uuid = json['uuid'];
    _displayName = json['displayName'];
    _narrativeDescription = json['narrativeDescription'];
    _tacticalDescription = json['tacticalDescription'];
    _coordinates = json['coordinates'];
    _displayIcon = json['displayIcon'];
    _listViewIcon = json['listViewIcon'];
    _listViewIconTall = json['listViewIconTall'];
    _splash = json['splash'];
    _stylizedBackgroundImage = json['stylizedBackgroundImage'];
    _premierBackgroundImage = json['premierBackgroundImage'];
    _assetPath = json['assetPath'];
    _mapUrl = json['mapUrl'];
    _xMultiplier = json['xMultiplier'];
    _yMultiplier = json['yMultiplier'];
    _xScalarToAdd = json['xScalarToAdd'];
    _yScalarToAdd = json['yScalarToAdd'];
    if (json['callouts'] != null) {
      _callouts = [];
      json['callouts'].forEach((v) {
        _callouts?.add(Callouts.fromJson(v));
      });
    }
  }

  String? _uuid;
  String? _displayName;
  dynamic _narrativeDescription;
  String? _tacticalDescription;
  String? _coordinates;
  String? _displayIcon;
  String? _listViewIcon;
  String? _listViewIconTall;
  String? _splash;
  String? _stylizedBackgroundImage;
  String? _premierBackgroundImage;
  String? _assetPath;
  String? _mapUrl;
  num? _xMultiplier;
  num? _yMultiplier;
  num? _xScalarToAdd;
  num? _yScalarToAdd;
  List<Callouts>? _callouts;

  String? get uuid => _uuid;

  String? get displayName => _displayName;

  dynamic get narrativeDescription => _narrativeDescription;

  String? get tacticalDescription => _tacticalDescription;

  String? get coordinates => _coordinates;

  String? get displayIcon => _displayIcon;

  String? get listViewIcon => _listViewIcon;

  String? get listViewIconTall => _listViewIconTall;

  String? get splash => _splash;

  String? get stylizedBackgroundImage => _stylizedBackgroundImage;

  String? get premierBackgroundImage => _premierBackgroundImage;

  String? get assetPath => _assetPath;

  String? get mapUrl => _mapUrl;

  num? get xMultiplier => _xMultiplier;

  num? get yMultiplier => _yMultiplier;

  num? get xScalarToAdd => _xScalarToAdd;

  num? get yScalarToAdd => _yScalarToAdd;

  List<Callouts>? get callouts => _callouts;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['uuid'] = _uuid;
    map['displayName'] = _displayName;
    map['narrativeDescription'] = _narrativeDescription;
    map['tacticalDescription'] = _tacticalDescription;
    map['coordinates'] = _coordinates;
    map['displayIcon'] = _displayIcon;
    map['listViewIcon'] = _listViewIcon;
    map['listViewIconTall'] = _listViewIconTall;
    map['splash'] = _splash;
    map['stylizedBackgroundImage'] = _stylizedBackgroundImage;
    map['premierBackgroundImage'] = _premierBackgroundImage;
    map['assetPath'] = _assetPath;
    map['mapUrl'] = _mapUrl;
    map['xMultiplier'] = _xMultiplier;
    map['yMultiplier'] = _yMultiplier;
    map['xScalarToAdd'] = _xScalarToAdd;
    map['yScalarToAdd'] = _yScalarToAdd;
    if (_callouts != null) {
      map['callouts'] = _callouts?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}