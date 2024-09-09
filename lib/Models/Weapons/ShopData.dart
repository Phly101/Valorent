import 'GridPosition.dart';
import 'dart:convert';

ShopData shopDataFromJson(String str) => ShopData.fromJson(json.decode(str));
String shopDataToJson(ShopData data) => json.encode(data.toJson());
class ShopData {
  ShopData({
      num? cost, 
      String? category, 
      num? shopOrderPriority, 
      String? categoryText, 
      GridPosition? gridPosition, 
      bool? canBeTrashed, 
      dynamic image, 
      String? newImage, 
      dynamic newImage2, 
      String? assetPath,}){
    _cost = cost;
    _category = category;
    _shopOrderPriority = shopOrderPriority;
    _categoryText = categoryText;
    _gridPosition = gridPosition;
    _canBeTrashed = canBeTrashed;
    _image = image;
    _newImage = newImage;
    _newImage2 = newImage2;
    _assetPath = assetPath;
}

  ShopData.fromJson(dynamic json) {
    _cost = json['cost'];
    _category = json['category'];
    _shopOrderPriority = json['shopOrderPriority'];
    _categoryText = json['categoryText'];
    _gridPosition = json['gridPosition'] != null ? GridPosition.fromJson(json['gridPosition']) : null;
    _canBeTrashed = json['canBeTrashed'];
    _image = json['image'];
    _newImage = json['newImage'];
    _newImage2 = json['newImage2'];
    _assetPath = json['assetPath'];
  }
  num? _cost;
  String? _category;
  num? _shopOrderPriority;
  String? _categoryText;
  GridPosition? _gridPosition;
  bool? _canBeTrashed;
  dynamic _image;
  String? _newImage;
  dynamic _newImage2;
  String? _assetPath;

  num? get cost => _cost;
  String? get category => _category;
  num? get shopOrderPriority => _shopOrderPriority;
  String? get categoryText => _categoryText;
  GridPosition? get gridPosition => _gridPosition;
  bool? get canBeTrashed => _canBeTrashed;
  dynamic get image => _image;
  String? get newImage => _newImage;
  dynamic get newImage2 => _newImage2;
  String? get assetPath => _assetPath;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['cost'] = _cost;
    map['category'] = _category;
    map['shopOrderPriority'] = _shopOrderPriority;
    map['categoryText'] = _categoryText;
    if (_gridPosition != null) {
      map['gridPosition'] = _gridPosition?.toJson();
    }
    map['canBeTrashed'] = _canBeTrashed;
    map['image'] = _image;
    map['newImage'] = _newImage;
    map['newImage2'] = _newImage2;
    map['assetPath'] = _assetPath;
    return map;
  }

}