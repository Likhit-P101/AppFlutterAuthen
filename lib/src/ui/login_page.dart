import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:app_flutter_authen/src/widgets/FormLogin.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation<double> _animation;

  bool _isSelected = false;
  void _radio() {
    setState(() {
      _isSelected = !_isSelected;
    });
  }

  Widget radioButton(bool isSelected) {
    return Container(
      width: 16.0,
      height: 16.0,
      padding: EdgeInsets.all(2.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          width: 2.0,
          color: Colors.blue[700],
        ),
      ),
      child: isSelected
          ? Container(
              width: double.infinity,
              height: double.infinity,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.blue[400]),
            )
          : Container(),
    );
  }

  Container _buildLogo() {
    return Container(
      alignment: Alignment.center,
      width: 80.0,
      height: 80.0,
      child: Image.asset('images/flutter-logo.png'),
    );
  }

  Widget _buildBody() {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(
                            left: 45.0, right: 45.0, top: 100.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            _buildLogo(),
                            SizedBox(height: 10.0),
                            FormLogin(),
                            SizedBox(height: 10.0),
                            _buildRowLogin(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                _expandedCreateNewAccount(),
              ],
            )),
      ],
    );
  }

  Expanded _expandedCreateNewAccount() {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Text(
              'Create A New Account',
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }

  Container _containerCreateNewAccount() {
    return Container(
      child: Row(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 15.0),
                child: Text(
                  "Create A New Account ",
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Expanded _expandedCreateNewAccount1() {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: 15.0),
            child: Text(
              "Create A New Account ",
              style: TextStyle(
                fontSize: 15.0,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _displayAppName() {
    return Text(
      'Login',
      style: TextStyle(
        color: Colors.white,
        fontSize: 18.0,
        fontWeight: FontWeight.normal,
      ),
    );
  }

  Row _buildRowLogin() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            SizedBox(width: 12.0),
            GestureDetector(
              onTap: _radio,
              child: radioButton(_isSelected),
            ),
            SizedBox(width: 8.0),
            Text(
              "Remember me",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 12,
              ),
            )
          ],
        ),
        InkWell(
          child: Container(
            width: 100.0,
            height: 40.0,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xFF17ead9), Color(0xFF6078ea)]),
                borderRadius: BorderRadius.circular(6.0),
                boxShadow: [
                  BoxShadow(
                      color: Color(0xFF6078ea).withOpacity(.3),
                      offset: Offset(0.0, 8.0),
                      blurRadius: 8.0)
                ]),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {},
                child: Center(
                  child: Text(
                    "SIGN IN",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      letterSpacing: 1.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _btnLogin() {
    return MaterialButton(
      color: Colors.blue[300],
      textColor: Colors.white,
      child: Text('Login'),
      splashColor: Colors.blueAccent[50],
      onPressed: () => {},
    );
  }

  Widget _linkSignUp() => Container();

  Widget _linkForgotPassword() => Container();

  @override
  void initState() {
    super.initState();
    _animationController = new AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    _animation = new CurvedAnimation(
      parent: _animationController,
      curve: Curves.bounceOut,
    );
    _animation.addListener(() => this.setState(() {}));
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.blue[100],
      body: _buildBody(),
    );
  }
}
