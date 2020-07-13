import 'package:afterparty/Partys/model/party.dart';
import 'package:flutter/material.dart';

class ProfilePartyInfo extends StatelessWidget {
  Party party;

  ProfilePartyInfo(this.party);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    final party = Text(
      this.party.name,
      style: TextStyle(
          fontFamily: 'Lato', fontSize: 20.0, fontWeight: FontWeight.bold),
    );

    final partyInfo = Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                this.party.name,
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 0.4),
                    fontFamily: 'Lato',
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                this.party.description,
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 0.4),
                    fontFamily: 'Lato',
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold),
              )
            ]));

    final likes = Text(
      'Heart ${this.party.likes}',
      style: TextStyle(
          fontFamily: 'Lato',
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
          color: Colors.amber),
    );

    final card = Container(
      width: screenWidth * 0.65,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 10.0,
                offset: Offset(0.0, 5.0))
          ]),
      child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              party,
              partyInfo,
              likes,
            ],
          )),
    );

    return Stack(
      alignment: Alignment(0.8, 1.25),
      children: <Widget>[
        card,
//        FloatingActionButtonGreen()
      ],
    );
  }
}
