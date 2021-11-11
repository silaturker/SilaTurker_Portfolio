import 'package:flutter/material.dart';
import 'package:silaturker/contact/large.dart';
import 'package:silaturker/contact/small.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.1, 1],
                  colors: [Colors.indigo, Colors.purpleAccent])
          ),
          child: LayoutBuilder(
            builder: (context, constraints) {
              var large = constraints.maxWidth > 1200;
              return Container(
                  height: constraints.maxHeight,
                  child: SingleChildScrollView(
                    child: large ? ContactLargePage() : ContactSmallPage(),
                  ));
            },
          ),
        ),
      ),
    );
  }
}
