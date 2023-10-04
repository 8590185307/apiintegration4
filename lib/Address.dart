import 'Coordinates.dart';

class Address {
  Address({
      required this.address,
      required this.city,
      required this.coordinates,
      required this.postalCode,
      required this.state,});

  Address.fromJson(dynamic json) {
    address = json['address'];
    city = json['city'];
    coordinates = (json['coordinates'] != null ? Coordinates.fromJson(json['coordinates']) : null)!;
    postalCode = json['postalCode'];
    state = json['state'];
  }
 late String address;
 late String city;
 late Coordinates coordinates;
 late String postalCode;
 late String state;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['address'] = address;
    map['city'] = city;
    if (coordinates != null) {
      map['coordinates'] = coordinates.toJson();
    }
    map['postalCode'] = postalCode;
    map['state'] = state;
    return map;
  }

}