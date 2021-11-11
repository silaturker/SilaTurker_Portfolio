import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Item extends StatelessWidget {
  final String title;
  final String subtitle;
  final DateTime start;
  final DateTime end;
  final String other;
  final bool inProgress;
  final String link;
  final String linktext;
  final BuildContext context;

  Item(
      {@required this.title,
        this.subtitle,
        this.start,
        this.end,
        this.other,
        this.link,
        this.linktext,
        this.inProgress = false,
        @required this.context});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [_title(), _subtitle(), _date(), _other(), _link()],
      ),
    );
  }

  Widget _title() {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Text(
        title,
        style: DefaultTextStyle.of(context)
            .style
            .copyWith(fontSize: 22, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _subtitle() {
    return subtitle != null
        ? Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Text(
        subtitle,
        style: DefaultTextStyle.of(context)
            .style
            .copyWith(fontSize: 20, height: 2),
      ),
    )
        : Container();
  }

  Widget _date() {
    return start != null && (end != null || inProgress)
        ? Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Text(
        start.day.toString() +
            '/' +
            start.month.toString() +
            '/' +
            start.year.toString() +
            ' - ' +
            (inProgress
                ? 'in progress'
                : end.day.toString() +
                '/' +
                end.month.toString() +
                '/' +
                end.year.toString()),
        style: DefaultTextStyle.of(context).style.copyWith(
            fontSize: 16,
            height: 2,
            fontFamily: 'Roboto Mono',
            fontWeight: FontWeight.w300),
      ),
    )
        : Container();
  }

  Widget _other() {
    return other != null
        ? Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Text(
        other,
        style: DefaultTextStyle.of(context).style.copyWith(
            fontSize: 16,
            height: 2,
            fontFamily: 'Roboto Mono',
            fontWeight: FontWeight.w300),
      ),
    )
        : Container();
  }

  Widget _link() {
    return (link != null && linktext != null)
        ? Container(
        margin: EdgeInsets.only(bottom: 10),
        child: InkWell(
          onTap: () => launch(link),
          child: Text(
            linktext,
            style: DefaultTextStyle.of(context).style.copyWith(
                fontSize: 16,
                height: 2,
                fontFamily: 'Roboto Mono',
                fontWeight: FontWeight.w300),
          ),
        ))
        : Container();
  }
}
