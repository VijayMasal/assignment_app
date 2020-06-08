import 'package:assignmentapp/Constant.dart';
import 'package:assignmentapp/helper/alertDialog.dart';
import 'package:assignmentapp/helper/validation_class.dart';
import 'package:assignmentapp/ui/curve_paint_page.dart';
import 'package:assignmentapp/ui/password_page.dart';
import 'package:assignmentapp/ui/progress_menu_page.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Color.fromRGBO(81, 134, 222, 1.0),
        accentColor: Color.fromRGBO(129, 162, 98, 1.0),
        primaryColorLight: Color.fromRGBO(248, 249, 250, 1.0),
        dividerColor: Colors.black,
        buttonColor: Color.fromRGBO(111, 163, 231, 1.0),
        backgroundColor: Colors.white,
        fontFamily: 'RubikMedium',
        textTheme: TextTheme(
          headline6: TextStyle(fontSize: 40.0, fontFamily: 'RubikBold',),
          headline5: TextStyle(fontSize: 26.0, fontFamily: 'RubikRegular',),
          headline3: TextStyle(fontSize: 15.0, fontFamily: 'RubikMedium',color: Colors.cyan[600], ) ,
          bodyText2: TextStyle(fontSize: 15.0, fontFamily: 'RubikRegular',color: Color.fromRGBO(81, 134, 222, 1.0)),
          bodyText1: TextStyle(fontSize: 17.0, fontFamily: 'RubikRegular'),
        ),
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  final emailController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<State> _alertLoader = new GlobalKey<State>();
  String _email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
    body:  SafeArea(
      child: Form(
        key: _formKey,
        child: Stack(
          children: <Widget>[
             Column(
              children: <Widget>[
                ProgressMenuPage(
                  first: true,
                  second: false,
                  third: false,
                  forth: false,
                  topMargin: 50,
                  leftMargin: 10,
                  rightMargin: 10,
                ),
                Expanded(
                  child: Container(
                    color: Theme.of(context).primaryColor,
                    //height: MediaQuery.of(context).size.height * 0.6 ,
                    width: MediaQuery.of(context).size.width,
                    child: CustomPaint(
                      painter: CurvePainter(),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 90),
                        child: ListView(
                          children: <Widget>[
                            ListTile(
                              title: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(welcomeTxt,style: Theme.of(context).textTheme.headline6,),
                              ),
                            ),
                            ListTile(
                              title: Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width * 0.8,
                                      child: Text(
                                        registerEmailTxt,
                                        maxLines: 2,
                                        style: Theme.of(context).textTheme.headline5,),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            ListTile(
                              title: Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(top: 30,left: 14,right: 14),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width * 0.8,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8.0),
                                        color: Theme.of(context).backgroundColor,
                                      ),
                                      child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.all(12),
                                          child: Container(
                                            child: TextFormField(
                                              keyboardType: TextInputType.emailAddress,
                                              controller: emailController,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(10),
                                                ),
                                                hintText: 'Email',
                                                fillColor: Color.fromRGBO(248, 249, 250, 1.0),
                                                focusedBorder: InputBorder.none,
                                                enabledBorder : InputBorder.none,
                                                filled: true,
                                                prefixIcon: Icon(
                                                  Icons.mail_outline,
                                                ),
                                              ),
                                              onSaved: (String val) {
                                                _email = val;
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  color: Theme.of(context).primaryColorLight,
                  height: 70,
                  child: Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      color: Theme.of(context).primaryColor,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(8.0),
                        ),
                        child: Text(nextButtonTxt,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20
                          ),
                        ),
                        onPressed: (){
                          _validateInputs();
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
    );
  }
  void _validateInputs() {
    String message = validationClass.validateEmail(emailController.text);
    if(message != null){
      AlertDialogs.showAlertDialog(context, _alertLoader,
          'Please Enter valid Email.');
    }else{
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => PasswordPage()),
      );
    }
  }
}
