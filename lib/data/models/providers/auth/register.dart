class ProvidersRegisterModel {
  int? status;
  String? message;
  Account? account;

  ProvidersRegisterModel({this.status, this.message, this.account});

  ProvidersRegisterModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    account =
    json['account'] != null ? Account.fromJson(json['account']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    if (account != null) {
      data['account'] = account!.toJson();
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
  double? balance;
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
    image = json['image'] != null ?  Image.fromJson(json['image']) : null;
    address =
    json['address'] != null ?  Address.fromJson(json['address']) : null;
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
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['phone'] = phone;
    data['type'] = type;
    data['is_verified'] = isVerified;
    data['is_active'] = isActive;
    if (image != null) {
      data['image'] = image!.toJson();
    }
    if (address != null) {
      data['address'] = address!.toJson();
    }
    data['provider_account'] = providerAccount;
    data['driver_account'] = driverAccount;
    data['user_account'] = userAccount;
    data['points'] = points;
    data['balance'] = balance;
    data['total_orders'] = totalOrders;
    data['device_token'] = deviceToken;
    data['service_name'] = serviceName;
    data['category_name'] = categoryName;
    data['category_id'] = categoryId;
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
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['id'] = id;
    data['path'] = path;
    data['type'] = type;
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
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['id'] = id;
    data['address'] = address;
    data['lon'] = lon;
    data['lat'] = lat;
    return data;
  }
}

