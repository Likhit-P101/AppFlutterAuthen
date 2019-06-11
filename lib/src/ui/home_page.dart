import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key, this.strTitleName}) : super(key: key);

  final String strTitleName;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  Future<void> _handleSignIn() async {
    try {} catch (e) {}
  }

  Future<void> _handleSignOut() async {}

  Widget _buildBody() {
    return Form(
      key: formKey,child: Text('HOME'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.strTitleName,style: TextStyle(fontSize: 14.0),),
      ),
      body: ConstrainedBox(
        constraints: const BoxConstraints.expand(),
        child: _buildBody(),
      ),
    );
  }
}
