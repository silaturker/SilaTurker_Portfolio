import 'package:flutter/material.dart';

class ExpandableContainer extends StatefulWidget {
  final bool isExpanded;
  final Widget collapsedChild;
  final Widget expandedChild;

  const ExpandableContainer(
      {Key key, this.isExpanded, this.collapsedChild, this.expandedChild})
      : super(key: key);

  @override
  _ExpandableContainerState createState() => _ExpandableContainerState();
}

class _ExpandableContainerState extends State<ExpandableContainer>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      vsync: this,
      duration: Duration(milliseconds: 200),
      curve: Curves.linear,
      child: widget.isExpanded ? widget.expandedChild : widget.collapsedChild,
    );
  }
}

