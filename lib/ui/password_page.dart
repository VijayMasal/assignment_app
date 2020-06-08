import 'package:assignmentapp/Constant.dart';
import 'package:assignmentapp/ui/progress_menu_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PasswordPage extends StatefulWidget {
  @override
  _PasswordPageState createState() => _PasswordPageState();
}
class _PasswordPageState extends State<PasswordPage> {
  final GlobalKey<FormState> _passwordformKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body:Form(
        key: _passwordformKey,
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      FlatButton.icon(
                          onPressed: (){
                            Navigator.of(context).pop();
                          },
                          icon: Icon(Icons.arrow_back,color:Theme.of(context).backgroundColor ,),
                          label: Text(createAccountTxt,
                              style: TextStyle(fontSize: 17.0, fontFamily: 'RubikMedium',
                                  color: Theme.of(context).backgroundColor))),
                    ],
                  ),
                  ProgressMenuPage(
                    leftMargin: 10,
                    rightMargin: 10,
                    first: true,
                    second: false,
                    third: false,
                    forth: false,
                  ),
                ],
              ),
            )
          ],
        )
      )
    );
  }

}