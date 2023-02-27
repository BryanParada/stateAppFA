import 'package:flutter/material.dart';
import 'package:state_app/models/user.dart';
import 'package:state_app/services/user_service.dart';


class Page1Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page1')
      ),
      body: StreamBuilder(
        stream: userService.userStream, 
        builder: (BuildContext context, AsyncSnapshot<User> snapshot) {
          return snapshot.hasData
          ? InfoUser( user: snapshot.data ) //user: userService.user
          : Center(child: Text('There is no info for the user'));
        },
      ), 
     floatingActionButton: FloatingActionButton(
      child: Icon( Icons.accessibility_new),
      onPressed: () => Navigator.pushNamed(context, 'page2'),
     ),
   );
  }
}

class InfoUser extends StatelessWidget { 

 final User? user;

  const InfoUser({required this.user});

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

          ListTile(title: Text('Name: ${user?.name}'),),
          ListTile(title: Text('Age: ${user?.age}'),),

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