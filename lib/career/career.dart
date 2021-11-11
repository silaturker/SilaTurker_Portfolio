import 'package:flutter/material.dart';
import 'package:silaturker/career/large.dart';

class CareerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.1, 0.3, 0.7, 1],
                  colors: [Colors.deepPurpleAccent, Colors.blue, Colors.deepPurple, Colors.purpleAccent])
          ),
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Container(
                height: constraints.maxHeight,
                child: SingleChildScrollView(
                  //child: large ? LargeCareerPage() : SmallCareerPage()),
                    child: LargeCareerPage()),
              );
            },
          ),
        ),
      ),
    );
  }
}
