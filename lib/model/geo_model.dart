// To parse this JSON data, do
//
//     final geo = geoFromJson(jsonString);

import 'dart:convert';

Geo geoFromJson(String str) => Geo.fromJson(json.decode(str));

String geoToJson(Geo data) => json.encode(data.toJson());

class Geo {
  Geo({
    this.lat,
    this.lng,
  });

  String? lat;
  String? lng;

  factory Geo.fromJson(Map<String, dynamic> json) => Geo(
    lat: json["lat"],
    lng: json["lng"],
  );

  Map<String, dynamic> toJson() => {
    "lat": lat,
    "lng": lng,
  };
}
