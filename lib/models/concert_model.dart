class Concert {
  String? title;
  List<String>? performers;
  String? startDate;
  String? endDate;

  String? url;
  String? image;

  Concert({
    this.title,
    this.performers,
    this.startDate,
    this.endDate,
    this.url,
    this.image,
  });

  @override
  String toString() {
    return "title: $title , startDate: $startDate , url: $url , image: $image ";
  }

  factory Concert.fromJson(Map<String, dynamic> json) {
    return Concert(
      title: json["title"],
      // performers: (json["performers"] as List<String>).map((i) => json["performers"]).toList(),
      startDate: json["startDate"],
      endDate: json["endDate"],
      url: json["url"],
      image: json["image"],
    );
  }
//
}