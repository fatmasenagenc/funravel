class Venue{
  String? id;
  String? type;
  String? name;

  Map<String, String>? location;
  String? address;
  String? country;
  String? state;

  String? display_location;

  Venue(
      {this.id,
      this.type,
      this.name,
      this.state,
      this.location,
      this.display_location,
      this.address,
      this.country});

  factory Venue.fromJson(Map<String, dynamic> json) {
    return Venue(
      id: json["id"] ?? "",
      type: json["type"] ?? "",
      name: json["name"] ?? "",
      state: json["state"] ?? "",
      location: json["location"] ?? {},
      display_location: json["display_location"] ?? "",
      address: json["address"] ?? "",
      country: json["country"] ?? "",
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": this.id,
      "type": this.type,
      "name": this.name,
      "location": this.location,
      "address": this.address,
      "country": this.country,
      "state": this.state,
      "display_location": this.display_location,
    };
  }
}