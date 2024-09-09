import 'Location.dart';

class Callouts {
  Callouts({
      String? regionName, 
      String? superRegionName, 
      Location? location,}){
    _regionName = regionName;
    _superRegionName = superRegionName;
    _location = location;
}

  Callouts.fromJson(dynamic json) {
    _regionName = json['regionName'];
    _superRegionName = json['superRegionName'];
    _location = json['location'] != null ? Location.fromJson(json['location']) : null;
  }
  String? _regionName;
  String? _superRegionName;
  Location? _location;

  String? get regionName => _regionName;
  String? get superRegionName => _superRegionName;
  Location? get location => _location;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['regionName'] = _regionName;
    map['superRegionName'] = _superRegionName;
    if (_location != null) {
      map['location'] = _location?.toJson();
    }
    return map;
  }

}