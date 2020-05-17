import 'package:flutter/material.dart';

Widget addToFeedButtons({name, url}) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Row(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage('$url'),
          radius: 20,
        ),
        SizedBox(width: 10),
        Text(
          '$name',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(),
        FlatButton(
          child: Text(
            '+Follow',
            style: TextStyle(color: Colors.blue),
          ),
          onPressed: null,
        )
      ],
    ),
  );
}

Widget rightCards1() {
  return Container(
    height: 280,
    width: 290,
    child: Card(
      margin: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
      elevation: 7,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(24),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15, top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Widhya E-Learning Platform',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            color: Colors.grey[600],
            height: 1,
            width: 250,
          ),
          Container(
              padding: EdgeInsets.fromLTRB(10, 30, 10, 10),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRkBD0nQKqUm5kSMztGUEKurrz285VMKOIwW3TU81hz29qn2CLJ&usqp=CAU',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 170,
                    child: Column(
                      children: [
                        Text(
                          'Best\nE-Learning\nPlatform',
                          style: TextStyle(color: Colors.white),
                        ),
                        Container(
                          height: 18,
                          decoration: BoxDecoration(
                              color: Colors.white38,
                              borderRadius: BorderRadius.circular(10)),
                          child: FlatButton(
                            onPressed: null,
                            child: Text('SeeCourses',
                                style: TextStyle(color: Colors.black)),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )),
        ],
      ),
    ),
  );
}

Widget rightCards2() {
  return Container(
      height: 550,
      width: 290,
      child: Card(
        margin: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
        elevation: 7,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(24),
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Text(
                'Follow Them',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(height: 10),
            Container(
              color: Colors.black,
              height: 1,
              width: 250,
            ),
            addToFeedButtons(
                name: 'Udemy',
                url:
                    'https://cdn.worldvectorlogo.com/logos/udemy-1.svg'),
            addToFeedButtons(
                name: 'Google',
                url:
                    'https://blog.hubspot.com/hubfs/image8-2.jpg'),
            addToFeedButtons(
                name: 'Apple Co',
                url:
                    'data:image/png;base64,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'),
            addToFeedButtons(
                name: 'Flutter',
                url:
                    'data:image/png;base64,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'),
            addToFeedButtons(
                name: 'Microsoft',
                url:
                    'data:image/png;base64,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'),
            addToFeedButtons(
                name: 'Flutter Web',
                url:
                    'data:image/png;base64,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'),
          ],
        ),
      ));
}

final rightCards = [rightCards1(), rightCards2()];
