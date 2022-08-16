import 'package:flutter/material.dart';

class ListItem {
  final String? image;

  final String? title;

  const ListItem({this.image, this.title});
}

const List<ListItem> list_data = [
  ListItem(
      title: 'Brand Guidline',
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRB_mpdTkAOjNZ8_N9SNFkzq7XCHXP81acoXPoHCRNi1o7IQk3EMPXwcA7kEVjw9jMHXos&usqp=CAU'),
  ListItem(
      title: 'Project Grail Sprint plane',
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjbmuYYklf8eY7XPRiuhP8i-eAKDzQ_GX9hw&usqp=CAU'),
  ListItem(
      title: 'Personal Wiki',
      image: 'https://www.assyst.de/cms/upload/sub/digitalisierung/18-F.jpg'),
];
