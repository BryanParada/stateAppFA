import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_app/bloc/user/user_bloc.dart';


class Page1Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page1')
      ),
      body: BlocBuilder<UserBloc, UserState>(
        builder: (_, state) {

          return state.existUser
          ? InfoUser()
          : const Center(
            child: Text('There is no user selected')
          );

          
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

          ListTile(title: Text('Name: '),),
          ListTile(title: Text('Age: '),),

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