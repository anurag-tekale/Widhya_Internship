import 'package:flutter/material.dart';
import '../common/theme.dart';
import '../model/project_model.dart';

class ProjectWidget extends StatelessWidget {
  const ProjectWidget({
    Key key,
    @required Size media,
  })  : _media = media,
        super(key: key);

  final Size _media;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      shadowColor: Colors.grey,
      borderRadius: BorderRadius.circular(25),
      child: Container(
        height: _media.height / 1.9,
        width: _media.width / 3 + 20,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        child: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Positioned(
                  top: 10,
                  left: 20,
                  child: Text(
                    'Top Performers of the month',
                    style: cardTitleTextStyle,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 50.0, left: 20, right: 20),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox(width: 2),
                          Text(
                            'Name',
                            style: TextStyle(color: Colors.indigo),
                          ),
                          Text(
                            'Course',
                            style: TextStyle(color: Colors.indigo),
                          ),
                          Text(
                            'Tasks Completed',
                            style: TextStyle(color: Colors.indigo),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Divider(),
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: projectItems.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 18),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              textBaseline: TextBaseline.alphabetic,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    CircleAvatar(
                                      child: Text(projectItems[index]
                                          .name
                                          .substring(0, 2)),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(projectItems[index].name),
                                  ],
                                ),
                                Text(
                                  projectItems[index].course,
                                  textAlign: TextAlign.justify,
                                ),
                                Text('${projectItems[index].tasks.toString()}'),
                              ],
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
