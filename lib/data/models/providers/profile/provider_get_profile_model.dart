class ProviderGetProfileModel {
  int? status;
  String? message;
  Account? account;

  ProviderGetProfileModel({this.status, this.message, this.account});

  ProviderGetProfileModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    account =
        json['account'] != null ? Account.fromJson(json['account']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.account != null) {
      data['account'] = this.account!.toJson();
    }
    return data;
  }
}

class Account {
  int? id;
  String? name;
  String? phone;
  String? type;
  int? isVerified;
  int? isActive;
  Image? image;
  Address? address;
  int? providerAccount;
  int? driverAccount;
  int? userAccount;
  int? points;
  int? balance;
  int? totalOrders;
  String? deviceToken;
  String? serviceName;
  String? categoryName;
  int? categoryId;

  Account(
      {this.id,
      this.name,
      this.phone,
      this.type,
      this.isVerified,
      this.isActive,
      this.image,
      this.address,
      this.providerAccount,
      this.driverAccount,
      this.userAccount,
      this.points,
      this.balance,
      this.totalOrders,
      this.deviceToken,
      this.serviceName,
      this.categoryName,
      this.categoryId});

  Account.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    phone = json['phone'];
    type = json['type'];
    isVerified = json['is_verified'];
    isActive = json['is_active'];
    image = json['image'] != null ? Image.fromJson(json['image']) : null;
    address =
        json['address'] != null ? Address.fromJson(json['address']) : null;
    providerAccount = json['provider_account'];
    driverAccount = json['driver_account'];
    userAccount = json['user_account'];
    points = json['points'];
    balance = json['balance'];
    totalOrders = json['total_orders'];
    deviceToken = json['device_token'];
    serviceName = json['service_name'];
    categoryName = json['category_name'];
    categoryId = json['category_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['phone'] = this.phone;
    data['type'] = this.type;
    data['is_verified'] = this.isVerified;
    data['is_active'] = this.isActive;
    if (this.image != null) {
      data['image'] = this.image!.toJson();
    }
    if (this.address != null) {
      data['address'] = this.address!.toJson();
    }
    data['provider_account'] = this.providerAccount;
    data['driver_account'] = this.driverAccount;
    data['user_account'] = this.userAccount;
    data['points'] = this.points;
    data['balance'] = this.balance;
    data['total_orders'] = this.totalOrders;
    data['device_token'] = this.deviceToken;
    data['service_name'] = this.serviceName;
    data['category_name'] = this.categoryName;
    data['category_id'] = this.categoryId;
    return data;
  }
}

class Image {
  int? id;
  String? path;
  String? type;

  Image({this.id, this.path, this.type});

  Image.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    path = json['path'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['path'] = this.path;
    data['type'] = this.type;
    return data;
  }
}

class Address {
  int? id;
  String? address;
  double? lon;
  double? lat;

  Address({this.id, this.address, this.lon, this.lat});

  Address.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    address = json['address'];
    lon = json['lon'];
    lat = json['lat'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['address'] = this.address;
    data['lon'] = this.lon;
    data['lat'] = this.lat;
    return data;
  }
}
