import 'package:brewapp/models/brew.dart';
import 'package:brewapp/screens/home/brew_list.dart';
import 'package:brewapp/screens/home/settings_form.dart';
import 'package:brewapp/services/auth.dart';
import 'package:brewapp/services/database.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    void _showSettingsPanel() {
      showModalBottomSheet(
          context: context,
          builder: (context) {
            return Container(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
              child: SettingsForm(),
            );
          });
    }

    return StreamProvider<List<Brew>>.value(
      value: DatabaseService().brews,
      child: Scaffold(
        backgroundColor: Colors.brown[50],
        appBar: AppBar(
          title: Text('Brew Crew'),
          backgroundColor: Colors.brown[400],
          elevation: 0.0,
          actions: <Widget>[
            FlatButton.icon(
                onPressed: () async {
                  await _auth.signOut();
                },
                icon: Icon(Icons.exit_to_app),
                label: Text('Logout')),
            FlatButton.icon(
              onPressed: () {
                return _showSettingsPanel();
              },
              icon: Icon(Icons.settings),
              label: Text('Settings'),
            ),
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/coffee.jpg'),
            fit: BoxFit.cover,
          )),
          child: BrewList(),
        ),
      ),
    );
  }
}
