import 'package:flutter/material.dart';

import 'package:silaturker/widgets/head.dart';

class ContactSmallPage extends StatelessWidget {
  //

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Head(contact: false),
          _intro(context),
          _section('Contacts.', context),
          _contacts(context),
          SizedBox(height: 50)
        ],
      ),
    );
  }

  Widget _intro(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.08),
      margin: EdgeInsets.symmetric(vertical: 50),
      child: Text(
        "Here you will find all my contacts. I am always available to exchange opinions, work in a team and help you in any way.\nLikewise, if you have any suggestions for this webpage, I'm happy to hear them!",
        style: DefaultTextStyle.of(context)
            .style
            .copyWith(fontSize: 18, height: 2),
      ),
    );
  }

  Widget _section(String title, BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.08),
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Text(
        title,
        style: DefaultTextStyle.of(context)
            .style
            .copyWith(fontSize: 28, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _contacts(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.08),
      child: Column(
        children: [

        ],
      ),
    );
  }
}
