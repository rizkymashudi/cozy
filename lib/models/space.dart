class Space {
  int? id;
  String? name;
  String? city;
  String? country;
  int? price;
  String? imageURL;
  int? rating;
  String? address;
  String? phone;
  String? mapURL;
  List<String>? photos;
  int? numberOfKitchens;
  int? numberOfBedrooms;
  int? numberOfCupboards;

  Space(
      {this.id,
      this.name,
      this.city,
      this.country,
      this.price,
      this.imageURL,
      this.rating,
      this.address,
      this.phone,
      this.mapURL,
      this.photos,
      this.numberOfKitchens,
      this.numberOfBedrooms,
      this.numberOfCupboards});

  Space.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    city = json['city'];
    country = json['country'];
    price = json['price'];
    imageURL = json['image_url'];
    rating = json['rating'];
    address = json['address'];
    phone = json['phone'];
    mapURL = json['map_url'];
    photos = json['photos'].cast<String>();
    numberOfKitchens = json['number_of_kitchens'];
    numberOfBedrooms = json['number_of_bedrooms'];
    numberOfCupboards = json['number_of_cupboards'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['city'] = city;
    data['country'] = country;
    data['price'] = price;
    data['image_url'] = imageURL;
    data['rating'] = rating;
    data['address'] = address;
    data['phone'] = phone;
    data['map_url'] = mapURL;
    data['photos'] = photos;
    data['number_of_kitchens'] = numberOfKitchens;
    data['number_of_bedrooms'] = numberOfBedrooms;
    data['number_of_cupboards'] = numberOfCupboards;

    return data;
  }
}
