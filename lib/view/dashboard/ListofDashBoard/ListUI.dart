import 'package:flutter/material.dart';

import 'ListClass.dart';

class ListUI extends StatelessWidget {
   ListUI({Key? key}) : super(key: key);

   List<ClassUpcomingEvent>u=[
     ClassUpcomingEvent(title: "Abundant Life", upcome: "Pastor Adewole Adesanya",
         dateTime: DateTime.now(), img: "assets/img_7.jpg"),
     ClassUpcomingEvent(title: "Abundant Life", upcome: "Pastor Adewole Adesanya",
         dateTime: DateTime.now(), img: "assets/img_7.jpg"),
     ClassUpcomingEvent(title: "Abundant Life", upcome: "Pastor Adewole Adesanya",
         dateTime: DateTime.now(), img: "assets/img_7.jpg"),
     ClassUpcomingEvent(title: "Abundant Life", upcome: "Pastor Adewole Adesanya",
         dateTime: DateTime.now(), img: "assets/img_7.jpg"),
     ClassUpcomingEvent(title: "Abundant Life", upcome: "Pastor Adewole Adesanya",
         dateTime: DateTime.now(), img: "assets/img_7.jpg"),
     ClassUpcomingEvent(title: "Abundant Life", upcome: "Pastor Adewole Adesanya",
         dateTime: DateTime.now(), img: "assets/img_7.jpg"),
     ClassUpcomingEvent(title: "Abundant Life", upcome: "Pastor Adewole Adesanya",
         dateTime: DateTime.now(), img: "assets/img_7.jpg"),
     ClassUpcomingEvent(title: "Abundant Life", upcome: "Pastor Adewole Adesanya",
         dateTime: DateTime.now(), img: "assets/img_7.jpg"),


   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemCount: u.length,itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 19.0, right: 19),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(u[index].title),
                      Text(u[index].upcome),
                    ],
                  ),
                  SizedBox(
                    width: 170,
                      height: 170,
                      child: Image.asset(u[index].img, scale: 6,))
                ],
              ),
            ),
          ),
        );
      },),
    );
  }
}
