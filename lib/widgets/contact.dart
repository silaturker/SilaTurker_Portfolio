import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatelessWidget {
  final String path;
  final String text;
  final String link;
  final String linktext;

  Contact(
      {@required this.path,
        @required this.text,
        this.link,
        @required this.linktext});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    TextStyle style = DefaultTextStyle.of(context)
        .style
        .copyWith(fontSize: width > 600 ? 18 : 16);

    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          _image(width),
          SizedBox(width: 30),
          Text(text, style: style),
          SizedBox(width: 10),
          Text(' : ', style: style),
          SizedBox(width: 10),
          link != null
              ? InkWell(
            child: Text(linktext, style: style),
            onTap: () => launch(link),
          )
              : Text(linktext, style: style),
        ],
      ),
    );
  }

  Widget _image(double width) {
    double dim = width > 600 ? 40 : 30;
    return Container(
      child: Image(
        image: AssetImage(path),
        height: dim,
        width: dim,
      ),
    );
  }
}

