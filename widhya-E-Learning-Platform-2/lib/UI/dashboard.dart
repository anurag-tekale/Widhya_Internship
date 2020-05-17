import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/cardtitle.dart';
import '../widgets/chartcard.dart';
import '../widgets/comment.dart';
import '../widgets/profile.dart';
import '../widgets/project.dart';
import '../widgets/contact.dart';
import '../widgets/responsive.dart';
import '../widgets/sidemenu.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _media = MediaQuery.of(context).size;
    print(_media);
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= 800) {
          return Center(
            child: Text('Hello'),
          );
        } else if (constraints.maxWidth <= 1280 &&
            constraints.maxWidth >= 800) {
          return Center(
            child: Text('Hey'),
          );
        } else if (constraints.maxWidth >= 1280) {
          return Material(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ResponsiveWidget.isLargeScreen(context)
                    ? SideBarMenu()
                    : Container(),
                Flexible(
                  fit: FlexFit.loose,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 55,
                        width: _media.width,
                        child: AppBar(
                          elevation: 4,
                          centerTitle: true,
                          title: Text(
                            'Widhya E-Learning Platform',
                          ),
                          backgroundColor: Colors.indigo[200],
                        ),
                      ),
                      Expanded(
                        child: ListView(
                          padding: EdgeInsets.only(
                              top: 20, left: 20, right: 20, bottom: 20),
                          children: <Widget>[
                            IntrinsicHeight(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      IntrinsicHeight(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
                                          children: <Widget>[
                                            CardTile(
                                              iconBgColor: Colors.orange,
                                              cardTitle: 'Total Courses',
                                              icon: Icons.flight_takeoff,
                                              subText: 'Widhya',
                                              mainText: '780',
                                            ),
                                            SizedBox(width: 20),
                                            CardTile(
                                              iconBgColor: Colors.pinkAccent,
                                              cardTitle: 'Flutter',
                                              icon: Icons.show_chart,
                                              subText: 'Enrolled: 50,125',
                                              mainText: '4.5/5.0',
                                            ),
                                            SizedBox(width: 20),
                                            CardTile(
                                              iconBgColor: Colors.green,
                                              cardTitle: 'Level',
                                              icon: Icons.label,
                                              subText: 'Badges: 12',
                                              mainText: '12',
                                            ),
                                            SizedBox(width: 20),
                                            CardTile(
                                              iconBgColor:
                                                  Colors.lightBlueAccent,
                                              cardTitle: 'Followers',
                                              icon: Icons.unfold_less,
                                              subText: '',
                                              mainText: '112',
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      IntrinsicHeight(
                                        child: Row(
                                          children: <Widget>[
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                ChartCardTile(
                                                  cardColor: Color(0xFF1b1e44),
                                                  cardTitle:
                                                      'Challenges Pending',
                                                  subText: 'May 2020',
                                                  icon: Icons.pie_chart,
                                                  typeText: 'Tasks: 12',
                                                ),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                ChartCardTile(
                                                  cardColor: Colors.indigo,
                                                  cardTitle: 'LeaderBoard',
                                                  subText: 'May 2019',
                                                  icon: Icons.android,
                                                  typeText: '35487',
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            ProjectWidget(media: _media),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  QuickContact(media: _media)
                                ],
                              ),
                            ),
                            IntrinsicHeight(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  CommentWidget(media: _media),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  ProfileWidget(media: _media),
                                ],
                              ),
                            ),
                            SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }
        return Container();
      },
    );
  }
}
