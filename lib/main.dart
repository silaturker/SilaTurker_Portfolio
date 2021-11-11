import 'package:flutter/material.dart';
import 'package:silaturker/about/about.dart';
import 'package:silaturker/career/career.dart';
import 'package:silaturker/contact/contact.dart';
import 'package:silaturker/skills/skills.dart';



void main() => runApp(Site());

class Site extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "silaturker",

        theme: ThemeData(fontFamily: 'Raleway'),
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => AboutPage(),
          '/skills': (context) => SkillsPage(),
          '/career': (context) => CareerPage(),
          '/contact': (context) => ContactPage()
        });
  }
}
