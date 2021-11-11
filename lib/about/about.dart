import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:silaturker/about/large.dart';
import 'package:animated_background/animated_background.dart';


class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.purpleAccent, Colors.deepPurpleAccent])
          ),
          child: LayoutBuilder(
            builder: (context, constraints) {
              //var large = constraints.maxWidth > 550;
              return Container(
                height: constraints.maxHeight,
                child: SingleChildScrollView(
                  //child: large ? LargeAboutPage() : SmallAboutPage()),
                    child: LargeAboutPage()),



              );
            },
          ),
        ),
      ),
    );
  }
}
