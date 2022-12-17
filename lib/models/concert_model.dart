import 'package:funravel_v0/models/performer.dart';
import 'package:funravel_v0/models/venue_model.dart';

class Concert {
  int id;
  String? title;
  List<Performer>? performers;
  String? startDate;
  String? endDate;

  String? url;
  String? image;

  Venue? venue;

  Concert({
    required this.id,
    this.title,
    this.performers,
    this.startDate,
    this.endDate,
    this.url,
    this.image,
    this.venue
  });

  @override
  String toString() {
    return "title: $title , startDate: $startDate , url: $url , image: $image ";
  }

  factory Concert.fromJson(Map<String, dynamic> json) {
    return Concert(
      id: json["id"] ?? 12,
      title: json["title"],
      // performers: (json["performers"] as List<String>).map((i) => json["performers"]).toList(),
      startDate: json["datetime_utc"],
      endDate: json["endDate"],
      url: json["url"],
      image: json["performers"][0]["image"],
      venue: Venue.fromJson(json["venue"]),
    );
  }
//
}