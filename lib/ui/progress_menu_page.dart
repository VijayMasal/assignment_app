import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProgressMenuPage extends StatelessWidget {
  final bool first;
  final bool second;
  final bool third;
  final bool forth;
  final double topMargin;
  final double leftMargin;
  final double rightMargin;
  ProgressMenuPage({
    this.topMargin = 0.0,
    this.leftMargin = 0.0,
    this.rightMargin = 0.0,
    this.first = false,
    this.second = false,
    this.third = false,
    this.forth = false
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: topMargin,left: leftMargin,right: rightMargin),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CircleAvatar(
            maxRadius: 28,
            backgroundColor: Theme.of(context).dividerColor,
            child: CircleAvatar(
                maxRadius: 27,
                backgroundColor: first ? Theme.of(context).accentColor : Theme.of(context).backgroundColor,
                child: Text('1',style: Theme.of(context).textTheme.bodyText1,)
            ),
          ),
          Expanded(
            child: Divider(
              color: Theme.of(context).dividerColor,
              thickness: 2,
            ),
          ),
          CircleAvatar(
            maxRadius: 28,
            backgroundColor: Theme.of(context).dividerColor,
            child: CircleAvatar(
                maxRadius: 27,
                backgroundColor: second ? Theme.of(context).accentColor : Theme.of(context).backgroundColor,
                child: Text('2',style: Theme.of(context).textTheme.bodyText1)
            ),
          ),
          Expanded(
            child: Divider(
              color: Theme.of(context).dividerColor,
              thickness: 2,
            ),
          ),
          CircleAvatar(
            maxRadius: 28,
            backgroundColor: Theme.of(context).dividerColor,
            child: CircleAvatar(
                maxRadius: 27,
                backgroundColor: third ? Theme.of(context).accentColor : Theme.of(context).backgroundColor,
                child: Text('3',style: Theme.of(context).textTheme.bodyText1)),
          ),
          Expanded(
            child: Divider(
              color: Theme.of(context).dividerColor,
              thickness: 2,
            ),
          ),
          CircleAvatar(
            maxRadius: 28,
            backgroundColor: Theme.of(context).dividerColor,
            child: CircleAvatar(
                maxRadius: 27,
                backgroundColor: forth ? Theme.of(context).accentColor : Theme.of(context).backgroundColor,
                child: Text('4',style: Theme.of(context).textTheme.bodyText1)),
          )

        ],
      ),
    );
  }
}