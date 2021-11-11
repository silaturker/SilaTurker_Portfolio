import 'package:flutter/cupertino.dart';
import 'package:silaturker/widgets/head.dart';

class LargeSkillsPage extends StatelessWidget {
  //
  final languages = [
    'Dart',
    'Python',
    'C#',
    'C',
    'C++',
    'Javascript'

  ];

  final app = ['Flutter', 'Firebase'];

  final fields = ['Mobile Development', 'Web Development', 'Software Testing'];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Head(skills: false),
          _intro(context),
          _table(context),
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
        'The skills I acquired.',
        style: DefaultTextStyle.of(context)
            .style
            .copyWith(fontSize: 18, height: 2),
      ),
    );
  }

  Widget _table(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.08),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _section('Languages', context),
                _list(languages, context),
              ],
            ),

          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _section('Mobile Development', context),
                _list(app, context),
              ],
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _section('Fields', context),
                _list(fields, context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _section(String title, BuildContext context) {
    return Text(
      title,
      style: DefaultTextStyle.of(context)
          .style
          .copyWith(fontSize: 28, fontWeight: FontWeight.bold),
    );
  }

  Widget _list(List<String> list, BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(bottom: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          list.length,
              (index) => Container(
            padding: EdgeInsets.fromLTRB(0, 30, width * 0.03, 0),
            child: Text(list[index],
                style:
                DefaultTextStyle.of(context).style.copyWith(fontSize: 20)),
          ),
        ),
      ),
    );
  }
}
