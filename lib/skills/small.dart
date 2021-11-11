import 'package:flutter/cupertino.dart';
import 'package:silaturker/widgets/head.dart';

class SmallSkillsPage extends StatelessWidget {
  //
  final languages = [
    'Dart',
    'Python',
    'C',
    'C++',
    'C#'
    'Javascript'
  ];

  final app = ['Flutter', 'Firebase'];


  final fields = ['Mobile Development', 'Deep Learning'];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [Head(skills: false), _body(context)],
      ),
    );
  }

  Widget _body(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.08),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _intro(context),
          _section('Languages', context),
          _list(languages, context),
          _section('Mobile Development', context),
          _list(app, context),
          _section('Fields', context),
          _list(fields, context),
        ],
      ),
    );
  }

  Widget _intro(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 40),
      child: Text(
        'In these years of study and work I have developed the following skills:',
        style: DefaultTextStyle.of(context)
            .style
            .copyWith(fontSize: 18, height: 2),
      ),
    );
  }

  Widget _section(String title, BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Text(
        title,
        style: DefaultTextStyle.of(context)
            .style
            .copyWith(fontSize: 25, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _list(List<String> list, BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(bottom: 50),
      width: width * 0.7,
      child: Wrap(
        children: List.generate(
          list.length,
              (index) => Container(
            padding: EdgeInsets.fromLTRB(0, 30, width * 0.03, 0),
            child: Text(list[index],
                style:
                DefaultTextStyle.of(context).style.copyWith(fontSize: 18)),
          ),
        ),
      ),
    );
  }
}
