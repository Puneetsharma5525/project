import 'dart:convert';

List<SimpleData> simpleDataFromJson(String str) => List<SimpleData>.from(json.decode(str).map((x) => SimpleData.fromJson(x)));

String simpleDataToJson(List<SimpleData> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class SimpleData {
  SimpleData({
    required this.albumId,
    required this.id,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  });

  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;

  factory SimpleData.fromJson(Map<String, dynamic> json) => SimpleData(
    albumId: json["albumId"],
    id: json["id"],
    title: json["title"],
    url: json["url"],
    thumbnailUrl: json["thumbnailUrl"],
  );

  Map<String, dynamic> toJson() => {
    "albumId": albumId,
    "id": id,
    "title": title,
    "url": url,
    "thumbnailUrl": thumbnailUrl,
  };
}
