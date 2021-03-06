
import 'package:flutter_weather/model/weather_data_model.dart';
import 'sys_model.dart';
import 'main_model.dart';
import 'wind_model.dart';

class WeatherModel {
  WeatherModel({
    List<Weather>? weather,
    Main? main,
    Wind? wind,
    Sys? sys,
    String? name,
    int? cod
  }){
    _weather = weather;
    _main = main;
    _wind = wind;
    _sys = sys;
    _name = name;
    _cod = cod;
  }

  WeatherModel.fromJson(dynamic json) {
    if (json['weather'] != null) {
      _weather = [];
      json['weather'].forEach((v) {
        _weather?.add(Weather.fromJson(v));
      });
    }
    _main = json['main'] != null ? Main.fromJson(json['main']) : null;
    _wind = json['wind'] != null ? Wind.fromJson(json['wind']) : null;
    _sys = json['sys'] != null ? Sys.fromJson(json['sys']) : null;
    _name = json['name'];
    _cod = json['cod'];
  }
  List<Weather>? _weather;
  Main? _main;
  Wind? _wind;
  Sys? _sys;
  String? _name;
  int? _cod;

  List<Weather>? get weather => _weather;
  Main? get main => _main;
  Wind? get wind => _wind;
  Sys? get sys => _sys;
  String? get name => _name;
  int? get cod => _cod;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_weather != null) {
      map['weather'] = _weather?.map((v) => v.toJson()).toList();
    }
    if (_main != null) {
      map['main'] = _main?.toJson();
    }
    if (_wind != null) {
      map['wind'] = _wind?.toJson();
    }
    if (_sys != null) {
      map['sys'] = _sys?.toJson();
    }
    map['name'] = _name;
    map['cod'] = _cod;
    return map;
  }

  @override
  String toString() {
    return 'WeatherModel{_weather: $_weather, _main: $_main, _wind: $_wind, _sys: $_sys, _name: $_name, _cod: $_cod}';
  }
}