import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:silaturker/config.dart';
import 'package:silaturker/widgets/expandable.dart';

// ignore: must_be_immutable
class Head extends StatefulWidget {
  final bool about;
  final bool skills;
  final bool career;
  final bool contact;

  bool isExpanded = false;

  Head(
      {this.about = true,
        this.skills = true,
        this.career = true,
        this.contact = true});

  @override
  _HeadState createState() => _HeadState();
}

class _HeadState extends State<Head> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(left: width * 0.08, right: width * 0.08),
      width: width,
      //color: Colors.grey,
      child: Column(
        crossAxisAlignment:
        width > 600 ? CrossAxisAlignment.center : CrossAxisAlignment.start,
        mainAxisAlignment:
        width > 600 ? MainAxisAlignment.center : MainAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          _title(context),
          _line(context),
          width > Config.widthLimit ? _row(context) : _expansion(context)
        ],
      ),
    );
  }


  Widget _title(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Container(
      //color: Colors.orange,
        padding: EdgeInsets.symmetric(vertical: height * 0.04),
        child: Text('S I L A  T Ü R K E R',
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
                fontFamily: 'Raleway')));
  }

  Widget _line(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      height: 1,
      color: Colors.black,
    );
  }

  List<Widget> _options(BuildContext context) {
    List<Widget> options = [
      MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          child: Text(
            'about',
            style: DefaultTextStyle.of(context).style.copyWith(fontSize: 18),
          ),
          onTap: () => this.widget.about
              ? Navigator.of(context).pushReplacementNamed('/')
              : {},
        ),
      ),


    MouseRegion(
    cursor: SystemMouseCursors.click,
        child: GestureDetector(
          child: Text(
            'skills',
            style: DefaultTextStyle.of(context).style.copyWith(fontSize: 18),
          ),
          onTap: () => this.widget.skills
              ? Navigator.of(context).pushReplacementNamed('/skills')
              : {},
        ),
      ),
    MouseRegion(
    cursor: SystemMouseCursors.click,
        child: GestureDetector(
          child: Text(
            'career',
            style: DefaultTextStyle.of(context).style.copyWith(fontSize: 18),
          ),
          onTap: () => this.widget.career
              ? Navigator.of(context).pushReplacementNamed('/career')
              : {},
        ),
      ),
    MouseRegion(
    cursor: SystemMouseCursors.click,
        child: GestureDetector(
          child: Text(
            'contact',
            style: DefaultTextStyle.of(context).style.copyWith(fontSize: 18),
          ),
          onTap: () => this.widget.contact
              ? Navigator.of(context).pushReplacementNamed('/contact')
              : {},
        ),
      ),
    ];
    return options;
  }

  Widget _row(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      //color: Colors.green,
      padding: EdgeInsets.symmetric(vertical: height * 0.04),
      width: width * 0.5,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: _options(context)),
    );
  }

  Widget _expansion(context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      //color: Colors.yellow,
      padding: EdgeInsets.only(top: height * 0.04),
      width: width * 0.5);

  }

  /// Collapsed
  Widget _expanded(BuildContext context) {
    return Container(
      //color: Colors.blue,
      height: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [_button('show less'), _column(context)],
      ),
    );
  }

  /// Expanded
  Widget _collapsed(BuildContext context) {
    return Container(
      height: 30,
      //color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [_button('show more')],
      ),
    );
  }

  Widget _button(String text) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Text(
            text,
            style: DefaultTextStyle.of(context).style.copyWith(fontSize: 18),
          ),
          GestureDetector(
            child: Icon(
              widget.isExpanded ? Icons.expand_less : Icons.expand_more,
              //color: Colors.grey,
              size: 20,
            ),
            onTap: () {
              setState(() {
                widget.isExpanded = !widget.isExpanded;
              });
            },
          ),
        ],
      ),
    );
  }

  Widget _column(BuildContext contxt) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: _options(context),
      ),
    );
  }
}
