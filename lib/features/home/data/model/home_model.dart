import 'dart:convert';

class HomeModel {
  final num? count;
  final dynamic next;
  final dynamic previous;
  final List<Result>? results;

  HomeModel({
    this.count,
    this.next,
    this.previous,
    this.results,
  });

  factory HomeModel.fromJson(String str) => HomeModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory HomeModel.fromMap(Map<String, dynamic> json) => HomeModel(
    count: json["count"],
    next: json["next"],
    previous: json["previous"],
    results: json["results"] == null ? [] : List<Result>.from(json["results"]!.map((x) => Result.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    "count": count,
    "next": next,
    "previous": previous,
    "results": results == null ? [] : List<dynamic>.from(results!.map((x) => x.toMap())),
  };
}

class Result {
  final String? receiverPhoneNumber;
  final num? productCount;
  final String? dateDelivery;
  final String? productName;
  final String? productInfo;
  final String? productType;
  final List<String>? fromLocation;
  final List<String>? toLocation;
  final String? address;
  final String? status;
  final String? productImage;
  final num? id;
  final Client? client;

  Result({
    this.receiverPhoneNumber,
    this.productCount,
    this.dateDelivery,
    this.productName,
    this.productInfo,
    this.productType,
    this.fromLocation,
    this.toLocation,
    this.address,
    this.status,
    this.productImage,
    this.id,
    this.client,
  });

  factory Result.fromJson(String str) => Result.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Result.fromMap(Map<String, dynamic> json) => Result(
    receiverPhoneNumber: json["receiver_phone_number"],
    productCount: json["product_count"],
    dateDelivery: json["date_delivery"],
    productName: json["product_name"],
    productInfo: json["product_info"],
    productType: json["product_type"],
    fromLocation: json["from_location"] == null ? [] : List<String>.from(json["from_location"]!.map((x) => x)),
    toLocation: json["to_location"] == null ? [] : List<String>.from(json["to_location"]!.map((x) => x)),
    address: json["address"],
    status: json["status"],
    productImage: json["product_image"],
    id: json["id"],
    client: json["client"] == null ? null : Client.fromMap(json["client"]),
  );

  Map<String, dynamic> toMap() => {
    "receiver_phone_number": receiverPhoneNumber,
    "product_count": productCount,
    "date_delivery": dateDelivery,
    "product_name": productName,
    "product_info": productInfo,
    "product_type": productType,
    "from_location": fromLocation == null ? [] : List<dynamic>.from(fromLocation!.map((x) => x)),
    "to_location": toLocation == null ? [] : List<dynamic>.from(toLocation!.map((x) => x)),
    "address": address,
    "status": status,
    "product_image": productImage,
    "id": id,
    "client": client?.toMap(),
  };
}

class Client {
  final String? firstName;
  final String? lastName;
  final String? objStatus;
  final User? user;

  Client({
    this.firstName,
    this.lastName,
    this.objStatus,
    this.user,
  });

  factory Client.fromJson(String str) => Client.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Client.fromMap(Map<String, dynamic> json) => Client(
    firstName: json["first_name"],
    lastName: json["last_name"],
    objStatus: json["obj_status"],
    user: json["user"] == null ? null : User.fromMap(json["user"]),
  );

  Map<String, dynamic> toMap() => {
    "first_name": firstName,
    "last_name": lastName,
    "obj_status": objStatus,
    "user": user?.toMap(),
  };
}

class User {
  final String? phonenumber;
  final String? userType;
  final String? firstName;
  final String? lastName;
  final num? id;

  User({
    this.phonenumber,
    this.userType,
    this.firstName,
    this.lastName,
    this.id,
  });

  factory User.fromJson(String str) => User.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory User.fromMap(Map<String, dynamic> json) => User(
    phonenumber: json["phonenumber"],
    userType: json["user_type"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    id: json["id"],
  );

  Map<String, dynamic> toMap() => {
    "phonenumber": phonenumber,
    "user_type": userType,
    "first_name": firstName,
    "last_name": lastName,
    "id": id,
  };
}
