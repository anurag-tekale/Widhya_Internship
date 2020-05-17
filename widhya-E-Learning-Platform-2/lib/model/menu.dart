import 'package:flutter/material.dart';

class Menu {
  String title;
  IconData icon;

  Menu({this.title, this.icon});
}

List<Menu> menuItems = [
  Menu(title: 'Dashboard', icon: Icons.dashboard),
  Menu(title: 'Articles', icon: Icons.archive),
  Menu(title: 'About', icon: Icons.album),
  Menu(title: 'Connect Us', icon: Icons.help),
];
