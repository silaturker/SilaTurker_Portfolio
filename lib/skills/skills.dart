import 'package:flutter/material.dart';
import 'package:silaturker/skills/large.dart';
import 'package:silaturker/skills/small.dart';

class SkillsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 1],
                  colors: [Colors.deepPurpleAccent, Colors.pinkAccent])
          ),
          child: LayoutBuilder(
            builder: (context, constraints) {
              var large = constraints.maxWidth > 1200;
              return Container(
                height: constraints.maxHeight,
                child: SingleChildScrollView(
                    child: large ? LargeSkillsPage() : SmallSkillsPage()),
              );
            },
          ),
        ),
      ),
    );
  }
}
