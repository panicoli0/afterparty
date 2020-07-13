import 'package:afterparty/Partys/model/party.dart';
import 'package:flutter/material.dart';

class User {
  final String uid;
  final String name;
  final String email;
  final String photoURL;
  final List<Party> myPartys;
  final List<Party> myFavoritePartys;

//  myFavPartys
//  myPartys

  User({
    Key key,
    @required this.uid,
    @required this.name,
    @required this.email,
    @required this.photoURL,
    this.myPartys,
    this.myFavoritePartys,
  });
}
