class StoreModel {
  int? ack;
  Store? store;
  List<Categories>? categories;

  StoreModel({this.ack, this.store, this.categories});

  StoreModel.fromJson(Map<String, dynamic> json) {
    ack = json['ack'];
    store = json['store'] != null ? Store.fromJson(json['store']) : null;
    if (json['categories'] != null) {
      categories = <Categories>[];
      json['categories'].forEach((v) {
        categories!.add(Categories.fromJson(v));
      });
    }
  }
}

class Store {
  int? id;
  int? userId;
  String? slug;
  int? businessTypeId;
  String? businessLogo;
  String? bannerImage;
  bool? recommended;
  String? zoneNumber;
  String? streetNumber;
  String? buildingNumber;
  String? country;
  double? latitude;
  double? longitude;
  bool? online;
  int? onlineStatus;
  String? onlineStatusChangeTime;
  bool? isApproved;
  String? businessAddress;
  int? adminCommission;
  int? orderAcceptTime;
  int? orderTimeForPicker;
  int? open247;
  int? categoryUpdateStatus;
  String? cuisineId;
  BusinessType? businessType;
  List<ManageWorkingHours>? manageWorkingHours;
  List<ManageHolidays>? manageHolidays;
  List<StoresLocales>? storesLocales;
  String? avgRating;
  String? countOfratings;

  Store(
      {this.id,
      this.userId,
      this.slug,
      this.businessTypeId,
      this.businessLogo,
      this.bannerImage,
      this.recommended,
      this.zoneNumber,
      this.streetNumber,
      this.buildingNumber,
      this.country,
      this.latitude,
      this.longitude,
      this.online,
      this.onlineStatus,
      this.onlineStatusChangeTime,
      this.isApproved,
      this.businessAddress,
      this.adminCommission,
      this.orderAcceptTime,
      this.orderTimeForPicker,
      this.open247,
      this.categoryUpdateStatus,
      this.cuisineId,
      this.businessType,
      this.manageWorkingHours,
      this.manageHolidays,
      this.storesLocales,
      this.avgRating,
      this.countOfratings});

  Store.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['userId'];
    slug = json['slug'];
    businessTypeId = json['businessTypeId'];
    businessLogo = json['business_logo'];
    bannerImage = json['banner_image'];
    recommended = json['recommended'];
    zoneNumber = json['zone_number'];
    streetNumber = json['street_number'];
    buildingNumber = json['building_number'];
    country = json['country'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    online = json['online'];
    onlineStatus = json['online_status'];
    onlineStatusChangeTime = json['online_status_change_time'];
    isApproved = json['is_approved'];
    businessAddress = json['business_address'];
    adminCommission = json['admin_commission'];
    orderAcceptTime = json['order_accept_time'];
    orderTimeForPicker = json['order_time_for_picker'];
    open247 = json['open247'];
    categoryUpdateStatus = json['category_update_status'];
    cuisineId = json['cuisineId'];
    businessType = json['business_type'] != null
        ? BusinessType.fromJson(json['business_type'])
        : null;
    if (json['manage_working_hours'] != null) {
      manageWorkingHours = <ManageWorkingHours>[];
      json['manage_working_hours'].forEach((v) {
        manageWorkingHours!.add(ManageWorkingHours.fromJson(v));
      });
    }
    if (json['manage_holidays'] != null) {
      manageHolidays = <ManageHolidays>[];
      json['manage_holidays'].forEach((v) {
        manageHolidays!.add(ManageHolidays.fromJson(v));
      });
    }
    if (json['stores_locales'] != null) {
      storesLocales = <StoresLocales>[];
      json['stores_locales'].forEach((v) {
        storesLocales!.add(StoresLocales.fromJson(v));
      });
    }
    avgRating = json['avgRating'];
    countOfratings = json['countOfratings'];
  }
}

class BusinessType {
  int? id;
  String? slug;
  String? image;
  int? categoryLevel;
  int? tax;
  List<BusinessTypeLocales>? businessTypeLocales;

  BusinessType(
      {this.id,
      this.slug,
      this.image,
      this.categoryLevel,
      this.tax,
      this.businessTypeLocales});

  BusinessType.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    slug = json['slug'];
    image = json['image'];
    categoryLevel = json['category_level'];
    tax = json['tax'];
    if (json['business_type_locales'] != null) {
      businessTypeLocales = <BusinessTypeLocales>[];
      json['business_type_locales'].forEach((v) {
        businessTypeLocales!.add(new BusinessTypeLocales.fromJson(v));
      });
    }
  }
}

class BusinessTypeLocales {
  String? name;
  String? description;

  BusinessTypeLocales({this.name, this.description});

  BusinessTypeLocales.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    description = json['description'];
  }
}

class ManageWorkingHours {
  int? id;
  int? storeId;
  String? day;
  String? starttime;
  String? endtime;
  bool? open;
  String? timejson;

  ManageWorkingHours(
      {this.id,
      this.storeId,
      this.day,
      this.starttime,
      this.endtime,
      this.open,
      this.timejson});

  ManageWorkingHours.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    storeId = json['storeId'];
    day = json['day'];
    starttime = json['starttime'];
    endtime = json['endtime'];
    open = json['open'];
    timejson = json['timejson'];
  }
}

class ManageHolidays {
  int? id;
  int? storeId;
  String? holidayName;
  String? date;

  ManageHolidays({this.id, this.storeId, this.holidayName, this.date});

  ManageHolidays.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    storeId = json['storeId'];
    holidayName = json['holidayName'];
    date = json['date'];
  }
}

class StoresLocales {
  int? id;
  int? storeId;
  String? locale;
  String? businessName;
  String? createdAt;
  String? updatedAt;
  String? status;

  StoresLocales(
      {this.id,
      this.storeId,
      this.locale,
      this.businessName,
      this.createdAt,
      this.updatedAt,
      this.status});

  StoresLocales.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    storeId = json['storeId'];
    locale = json['locale'];
    businessName = json['business_name'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    status = json['status'];
  }
}

class Categories {
  int? id;
  int? businessTypeId;
  String? slug;
  int? parentId;
  String? status;
  String? imageGif;
  String? image;
  int? productCount;
  List<CategoryLocales>? categoryLocales;
  StoreCategoryRelation? storeCategoryRelation;
  List<Category>? category;

  Categories(
      {this.id,
      this.businessTypeId,
      this.slug,
      this.parentId,
      this.status,
      this.imageGif,
      this.image,
      this.productCount,
      this.categoryLocales,
      this.storeCategoryRelation,
      this.category});

  Categories.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    businessTypeId = json['businessTypeId'];
    slug = json['slug'];
    parentId = json['parent_id'];
    status = json['status'];
    imageGif = json['image_gif'];
    image = json['image'];
    productCount = json['productCount'];
    if (json['category_locales'] != null) {
      categoryLocales = <CategoryLocales>[];
      json['category_locales'].forEach((v) {
        categoryLocales!.add(CategoryLocales.fromJson(v));
      });
    }
    storeCategoryRelation = json['store_category_relation'] != null
        ? StoreCategoryRelation.fromJson(json['store_category_relation'])
        : null;
    if (json['category'] != null) {
      category = <Category>[];
      json['category'].forEach((v) {
        category!.add(Category.fromJson(v));
      });
    }
  }
}

class CategoryLocales {
  String? name;
  String? description;
  String? locale;

  CategoryLocales({this.name, this.description, this.locale});

  CategoryLocales.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    description = json['description'];
    locale = json['locale'];
  }
}

class StoreCategoryRelation {
  int? id;
  int? sequence;
  String? image;

  StoreCategoryRelation({this.id, this.sequence, this.image});

  StoreCategoryRelation.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    sequence = json['sequence'];
    image = json['image'];
  }
}

class Category {
  int? id;
  int? businessTypeId;
  String? slug;
  int? parentId;
  String? status;
  String? imageGif;
  String? image;
  int? productCount;
  List<CategoryLocales>? categoryLocales;
  StoreCategoryRelation? storeCategoryRelation;

  Category(
      {this.id,
      this.businessTypeId,
      this.slug,
      this.parentId,
      this.status,
      this.imageGif,
      this.image,
      this.productCount,
      this.categoryLocales,
      this.storeCategoryRelation});

  Category.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    businessTypeId = json['businessTypeId'];
    slug = json['slug'];
    parentId = json['parent_id'];
    status = json['status'];
    imageGif = json['image_gif'];
    image = json['image'];
    productCount = json['productCount'];
    if (json['category_locales'] != null) {
      categoryLocales = <CategoryLocales>[];
      json['category_locales'].forEach((v) {
        categoryLocales!.add(CategoryLocales.fromJson(v));
      });
    }
    storeCategoryRelation = json['store_category_relation'] != null
        ? StoreCategoryRelation.fromJson(json['store_category_relation'])
        : null;
  }
}
