import 'dart:convert';

class UserModel {
  UserModel({
    this.username,
    this.email,
    this.phoneNumber,
  });

  String? username;
  String? email;
  String? phoneNumber;

  factory UserModel.fromRawJson(String str) =>
      UserModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        username: json["username"],
        email: json["email"],
        phoneNumber: json["phone_number"],
      );

  Map<String, dynamic> toJson() => {
        "username": username,
        "email": email,
        "phone_number": phoneNumber,
      };
}
