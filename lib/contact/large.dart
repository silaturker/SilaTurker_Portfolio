import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:silaturker/widgets/contact.dart';
import 'package:silaturker/widgets/head.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';



class ContactLargePage extends StatelessWidget {
  //
  _launchURL() async {
    const url = 'https://github.com/silaturker';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  __launchURL() async {
    const url = 'https://www.instagram.com/silaturker/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  ___launchURL() async {
    const url = 'https://www.linkedin.com/in/silaturker/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  ____launchURL() async {
      final Uri params = Uri(
    scheme: 'mailto',
    path: 'silaturker12@gmail.com',
  );
  String  url = params.toString();
  if (await canLaunch(url)) {
  await launch(url);
  } else {
  print( 'Could not launch $url');
  }
}
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Head(contact: false),
          _intro(context),
          _section('Contacts', context),
          _contacts(context),
          _contacts_(context),
          _contacts__(context),
          _contacts___(context)

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
        "You can see the social media links below. \n If you have suggestions for improving my website, do not hesitate to contact me.🤓",
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
      child: IconButton(
          icon: FaIcon(FontAwesomeIcons.github),
          iconSize: 40,
          padding: EdgeInsets.only(left: 200),
          alignment: Alignment.bottomCenter,
          onPressed: () {_launchURL(); }
      ),
    );
  }
  Widget _contacts_(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return IconButton(
        icon: FaIcon(FontAwesomeIcons.instagram),
        iconSize: 40,
        padding: EdgeInsets.fromLTRB(200, 0, 0, 0),
        alignment: Alignment.bottomCenter,
        onPressed: () {__launchURL();  }
    );

  }
  Widget _contacts__(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return IconButton(
        icon: FaIcon(FontAwesomeIcons.linkedin),
        iconSize: 40,
        padding: EdgeInsets.fromLTRB(200, 0, 0, 0),
        alignment: Alignment.center,
        onPressed: () { ___launchURL();}
    );

  }
  Widget _contacts___(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return IconButton(
        icon: FaIcon(FontAwesomeIcons.envelope),
        iconSize: 40,
        padding:const EdgeInsets.fromLTRB(200, 0, 0, 0),
        alignment: Alignment.center,
        onPressed: () { ____launchURL();}
    );

  }
}
