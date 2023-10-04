import 'Hair.dart';
import 'Address.dart';
import 'Bank.dart';
import 'Company.dart';

class Users {
  Users({
      required this.id,
      required this.firstName,
      required this.lastName,
      required this.maidenName,
      required this.age,
      required this.gender,
      required this.email,
      required this.phone,
      required this.username,
      required this.password,
      required this.birthDate,
      required this.image,
      required this.bloodGroup,
      required this.height,
      required this.weight,
      required this.eyeColor,
      this.hair,
      required this.domain,
      required this.ip,
      required this.address,
      required this.macAddress,
      required this.university,
      required this.bank,
      required this.company,
      required this.ein,
      required this.ssn,
      required this.userAgent,});

  Users.fromJson(dynamic json) {
    id = json['id'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    maidenName = json['maidenName'];
    age = json['age'];
    gender = json['gender'];
    email = json['email'];
    phone = json['phone'];
    username = json['username'];
    password = json['password'];
    birthDate = json['birthDate'];
    image = json['image'];
    bloodGroup = json['bloodGroup'];
    height = json['height'];
    weight = json['weight'];
    eyeColor = json['eyeColor'];
    hair = json['hair'] != null ? hair.fromJson(json['hair']) : null;
    domain = json['domain'];
    ip = json['ip'];
    address = (json['address'] != null ? Address.fromJson(json['address']) : null)!;
    macAddress = json['macAddress'];
    university = json['university'];
    bank = (json['bank'] != null ? Bank.fromJson(json['bank']) : null)!;
    company = (json['company'] != null ? Company.fromJson(json['company']) : null)!;
    ein = json['ein'];
    ssn = json['ssn'];
    userAgent = json['userAgent'];
  }
  late int id;
  late String firstName;
  late String lastName;
  late String maidenName;
  late int age;
  late String gender;
  late String email;
  late String phone;
  late String username;
  late String password;
  late String birthDate;
  late String image;
  late String bloodGroup;
  late int height;
  late double weight;
  late String eyeColor;
  late Hair hair;
  late String domain;
  late String ip;
  late Address address;
  late String macAddress;
  late String university;
  late Bank bank;
  late Company company;
  late String ein;
  late String ssn;
  late String userAgent;


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['firstName'] = firstName;
    map['lastName'] = lastName;
    map['maidenName'] = maidenName;
    map['age'] = age;
    map['gender'] = gender;
    map['email'] = email;
    map['phone'] = phone;
    map['username'] = username;
    map['password'] = password;
    map['birthDate'] = birthDate;
    map['image'] = image;
    map['bloodGroup'] = bloodGroup;
    map['height'] = height;
    map['weight'] = weight;
    map['eyeColor'] = eyeColor;
    if (hair != null) {
      map['hair'] = hair.toJson();
    }
    map['domain'] = domain;
    map['ip'] = ip;
    if (address != null) {
      map['address'] = address.toJson();
    }
    map['macAddress'] = macAddress;
    map['university'] = university;
    if (bank != null) {
      map['bank'] = bank.toJson();
    }
    if (company != null) {
      map['company'] = company.toJson();
    }
    map['ein'] = ein;
    map['ssn'] = ssn;
    map['userAgent'] = userAgent;
    return map;
  }

}