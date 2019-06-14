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
          color: Colors.black,
        ),
      ),
      child: isSelected
          ? Container(
              width: double.infinity,
              height: double.infinity,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.black),
            )
          : Container(),
    );
  }

  Container _buildLogo() {
    return Container(
      width: 85.0,
      height: 85.0,
      child: Image.asset('images/flutter-logo.png'),
    );
  }

  Widget _buildBody() {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(left: 35.0, right: 35.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    _buildLogo(),
                    SizedBox(height: 15.0),
                    FormLogin(),
                    SizedBox(height: 15.0),
                    _buildRowLogin(),
                  ],
                ),
              ),
            )
          ],
        )
      ],
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
            GestureDetector(onTap: _radio, child: radioButton(_isSelected)),
            SizedBox(width: 8.0),
            Text(
              "Remember me",
              style: TextStyle(fontSize: 12, ),
            )
          ],
        ),
        InkWell(
          child: Container(
            width: 110.0,
            height: 45.0,
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
