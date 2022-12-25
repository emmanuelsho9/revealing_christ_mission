// To parse this JSON data, do
//
//     final classUpcomingEvent = classUpcomingEventFromJson(jsonString);

import 'dart:convert';

ClassUpcomingEvent classUpcomingEventFromJson(String str) => ClassUpcomingEvent.fromJson(json.decode(str));

String classUpcomingEventToJson(ClassUpcomingEvent data) => json.encode(data.toJson());

class ClassUpcomingEvent {
  ClassUpcomingEvent({
    required this.title,
    required this.upcome,
    required this.dateTime,
    required this.img,
  });

  String title;
  String upcome;
  DateTime dateTime;
  String img;

  factory ClassUpcomingEvent.fromJson(Map<String, dynamic> json) => ClassUpcomingEvent(
    title: json["title"],
    upcome: json["upcome"],
    dateTime: json["dateTime"],
    img: json["img"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "upcome": upcome,
    "dateTime":dateTime,
    "img": img,
  };
}
