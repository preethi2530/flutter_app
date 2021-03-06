import 'package:biblio/models/user.dart';
import 'package:biblio/screens/authenticate/authenticate.dart';
import 'package:biblio/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return either the Home or Authenticate widget
    final user = Provider.of<UserDetails>(context);
    if (user == null) {
      return Authenticate();
    } else {
      return MainPage();
    }
  }
}
