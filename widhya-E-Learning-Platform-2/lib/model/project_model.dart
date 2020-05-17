import 'package:flutter/material.dart';

class Project {
  String name;
  String course;
  double tasks;
  String image;
  Color color;

  Project({this.name, this.course, this.tasks, this.image, this.color});
}

List<Project> projectItems = [
  Project(
    name: 'Nivas Reddy',
    course: 'Flutter',
    tasks: 89,
    color: Colors.yellow,
  ),
  Project(
    name: 'Ananta Srikar',
    course: 'Machine Learning',
    tasks: 85,
    color: Colors.lightBlue,
  ),
  Project(
    name: 'Anurag Tekale',
    course: 'Flutter Web',
    tasks: 75,
    color: Colors.red,
  ),
];
