import 'package:brewapp/models/user.dart';
import 'package:brewapp/screens/authenticate/authenticate.dart';
import 'package:brewapp/screens/home/home.dart';
import 'package:brewapp/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrappers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);

    //Return either Home or Authenticate widgets
    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
