import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  void getData() async {

    // Simulate network request for a username
    String usernme = await Future.delayed(Duration(seconds: 3), () {
      return 'yoshi';
    });

      // Simulate network request to get bio of the username
      String bio = await Future.delayed(Duration(seconds: 2), () {
        return 'vegan, musician and egg collector';
      });

      print('$usernme - $bio');

    }

    @override
    void initState() {
      super.initState();
      getData();
      print('het there');
    }
    @override
    Widget build(BuildContext context) {
      print('initState function ran');
      return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text('Choose a Location'),
          centerTitle: true,
          elevation: 0,
        ),
      );
    }
  }
