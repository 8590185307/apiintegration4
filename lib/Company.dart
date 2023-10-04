import 'Address.dart';

class Company {
  Company({
      required this.address,
      required this.department,
      required this.name,
      required this.title,});

  Company.fromJson(dynamic json) {
    address = (json['address'] != null ? Address.fromJson(json['address']) : null)!;
    department = json['department'];
    name = json['name'];
    title = json['title'];
  }
 late Address address;
 late String department;
 late String name;
 late String title;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (address != null) {
      map['address'] = address.toJson();
    }
    map['department'] = department;
    map['name'] = name;
    map['title'] = title;
    return map;
  }

}