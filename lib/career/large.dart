import 'package:flutter/cupertino.dart';
import 'package:silaturker/widgets/head.dart';
import 'package:silaturker/widgets/item.dart';

class LargeCareerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Head(career: false),
          _body(context),
        ],
      ),
    );
  }

  Widget _body(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.08),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _section('Education History', context),
          _experience(context),
          _section('Work Experience', context),
          _work(context),
        ],
      ),
    );
  }

  Widget _section(String title, BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Text(
        title,
        style: DefaultTextStyle.of(context)
            .style
            .copyWith(fontSize: 28, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _experience(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Item(
              title: 'BSc in Computer Engineering',
              subtitle:
              'Bachelor of Science in Computer Engineering @ ATILIM UNIVERSITY',
              start: DateTime(2016, 09, 16),
              end: DateTime(2021, 07, 06),
              other:
              'CGPA: 3.0/4.0',
              context: context),
          Item(
              title: 'Erasmus Programme/POLAND',
              subtitle:
              'Bachelor of Science in Computer Engineering @ Poznan University of Technology',
              start: DateTime(2020, 02, 24),
              end: DateTime(2020, 07, 15),
              other:
              'CGPA: 3.85/4.0',
              context: context),
          Item(
              title: 'High School',
              subtitle: 'Meltem Ayhan Anatolian High School',
              start: DateTime(2012, 09, 15),
              end: DateTime(2016, 06, 15),
              other:
              'CGPA: 88/100',
              context: context)
        ],
      ),
    );
  }

  Widget _work(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Item(
              title: 'Erasmus Internship Programme/Web Development',
              subtitle: 'Software Developer Intern @ POZNAN UNIVERSITY OF TECHNOLOGY',
              start: DateTime(2021, 09, 06),
              end: DateTime(2022, 01, 07),
              other:
              'Web Development, React, Javascript, HTML, CSS.',
              context: context),
          Item(
              title: 'Web Development',
              subtitle: 'Software Developer Intern @ MINISTRY OF INTERIOR',
              start: DateTime(2020, 08, 08),
              end: DateTime(2020, 09, 25),
              other:
              'Web Development, HTML, CSS, JavaScript.',
              context: context),
          Item(
              title: 'Image Processing',
              subtitle: 'Software Developer Intern @ 3DTIM ELECTRONIC A.Ş.',
              start: DateTime(2019, 06, 17),
              end: DateTime(2019, 07, 12),
              other:
              'Image Processing, Python, Data Collection',
              context: context),
        ],
      ),
    );
  }
}
