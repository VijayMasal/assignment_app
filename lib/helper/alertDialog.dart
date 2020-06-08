import 'package:assignmentapp/Constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertDialogs {
  static Future<void> showAlertDialog(
      BuildContext context, GlobalKey key, String msg) async {
    return showDialog<Null>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
       return CupertinoAlertDialog(
        title: Text(""),
        content: Text(msg,style: Theme.of(context).textTheme.bodyText1,),
        actions: <Widget>[
          CupertinoDialogAction(
            child: Text(okTxt),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
      },
    );
  }

//  static Future<void> showAlertDialog(
//      BuildContext context, GlobalKey key, String msg) async {
//    return showDialog<Null>(
//      context: context,
//      barrierDismissible: false, // user must tap button!
//      builder: (BuildContext context) {
//        return CupertinoAlertDialog(
//          title: Text(warningTxt),
//          content: Text(msg),
//          actions: <Widget>[
////          CupertinoDialogAction(
////            child: Text('Don\'t Allow'),
////            onPressed: () {
////              Navigator.of(context).pop();
////            },
////          ),
//            CupertinoDialogAction(
//              child: Text(okTxt),
//              onPressed: () {
//                Navigator.of(context).pop();
//              },
//            ),
//          ],
//        );
//      },
//    );
//  }
}