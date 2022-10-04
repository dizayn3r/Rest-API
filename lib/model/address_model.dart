// To parse this JSON data, do
//
//     final address = addressFromJson(jsonString);

import 'dart:convert';

import 'geo_model.dart';

Address addressFromJson(String str) => Address.fromJson(json.decode(str));

String addressToJson(Address data) => json.encode(data.toJson());

class Address {
  Address({
    this.street,
    this.suite,
    this.city,
    this.zipCode,
    this.geo,
  });

  String? street;
  String? suite;
  String? city;
  String? zipCode;
  Geo? geo;

  factory Address.fromJson(Map<String, dynamic> json) => Address(
    street: json["street"],
    suite: json["suite"],
    city: json["city"],
    zipCode: json["zipCode"],
    geo: json["geo"],
  );

  Map<String, dynamic> toJson() => {
    "street": street,
    "suite": suite,
    "city": city,
    "zipCode": zipCode,
    "geo":geo,
  };
}
