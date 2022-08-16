import 'package:flutter/material.dart';

class GridItem {
  final IconData? icon;

  final String? title;

  final Color? background;

  const GridItem({this.icon, this.title, this.background});
}

const List<GridItem> data = [
  GridItem(
    title: 'All Wikis',
    icon: Icons.calendar_today_rounded,
    background: Color(0xffFF8965),
  ),
  GridItem(
    title: 'My Private Notes',
    icon: Icons.lock_outline_rounded,
    background: Color(0xff79C0F8),
  ),
  GridItem(
    title: 'Bookmrked Wikis',
    icon: Icons.bookmark_outline_rounded,
    background: Color(0xff7885CB),
  ),
  GridItem(
    title: 'Templates',
    icon: Icons.document_scanner_rounded,
    background: Color(0xff69F0AE),
  ),
];
