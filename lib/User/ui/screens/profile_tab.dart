import 'package:afterparty/User/bloc/bloc_user.dart';
import 'package:afterparty/User/model/user.dart';
import 'package:afterparty/User/ui/screens/profile_header.dart';
import 'package:afterparty/User/ui/widgets/profile_background.dart';
import 'package:afterparty/User/ui/widgets/profile_party_list.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class ProfileTab extends StatelessWidget {
  static String id = 'profile_tab';
  UserBloc userBloc;
  User user;

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of<UserBloc>(context);
    // TODO: implement build
    /*return Container(
      color: Colors.indigo,
    );*/
    return Stack(
      children: <Widget>[
        ProfileBackground(),
        ListView(
          children: <Widget>[
            ProfileHeader(),
            ProfilePartyList(),
//          ProfilePlacesList() ACA VA LA LISTA DE Partys Agregados por ese usuario
          ],
        ),
      ],
    );
  }
}
