import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_app/models/user.dart';
import 'package:state_app/services/user_service.dart';


class Page1Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final userService = Provider.of<UserService>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Page1')
      ),
      body: userService.existsUser
      ? InfoUser( user: userService.user! )
      : Center(child: Text('There is no user selected')),
     floatingActionButton: FloatingActionButton(
      child: Icon( Icons.accessibility_new),
      onPressed: () => Navigator.pushNamed(context, 'page2'),
     ),
   );
  }
}

class InfoUser extends StatelessWidget { 

  final User user;

  const InfoUser({super.key, required this.user}); 

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('General', style:TextStyle( fontSize: 18, fontWeight: FontWeight.bold)),
          Divider(),

          ListTile(title: Text('Name: ${this.user.name}'),),
          ListTile(title: Text('Age: ${this.user.age}'),),

          Text('Professions', style:TextStyle( fontSize: 18, fontWeight: FontWeight.bold)),
          Divider(),

          ListTile( title: Text('Profession 1')),
          ListTile( title: Text('Profession 2')),
          ListTile( title: Text('Profession 3')),

        ],
      )
    );
  }
}