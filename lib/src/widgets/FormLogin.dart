import 'package:flutter/material.dart';

class FormLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String strEmail, strPassword;
    return Container(
      width: double.infinity,
      height: 230.0,
      decoration: BoxDecoration(
        color: Colors.blue[50],
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
              color: Colors.black12,
              offset: Offset(0.0, 15.0),
              blurRadius: 15.0),
          BoxShadow(
              color: Colors.black12,
              offset: Offset(0.0, -10.0),
              blurRadius: 10.0),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: 25.0,
          top: 20.0,
          right: 25.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Login",
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    // fontFamily: "Poppins-Bold",
                    letterSpacing: .4)),
            SizedBox(
              height: 5.0,
            ),
            Text('E-mail',
                style: TextStyle(
                  fontSize: 14.0,
                )),
            TextFormField(
              
              //style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  hintText: 'Enter Email',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
              keyboardType: TextInputType.emailAddress,
              onSaved: (String value) {
                strEmail = value;
              },
            ),
            SizedBox(
              height: 5.0,
            ),
            Text("Password",
                style: TextStyle(
                  fontSize: 14.0,
                )),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Enter Password",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
              obscureText: true,
              keyboardType: TextInputType.text,
              onSaved: (String value) {
                strPassword = value;
              },
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  'Forgot Password ?',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 12.0,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
