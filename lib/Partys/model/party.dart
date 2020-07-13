import 'package:afterparty/User/model/user.dart';
import 'package:flutter/material.dart';

class Party {
  String id;
  String name;
  String description;
  String urlImage;
  int likes;
  User userOwner;
  String playing;
  String category;

  Party({
    Key key,
    @required this.name,
    @required this.description,
    @required this.urlImage,
    this.likes,
    @required this.userOwner,
    this.category,
    this.playing,
  });
}
