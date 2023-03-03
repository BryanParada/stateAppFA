import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_app/bloc/user/user_bloc.dart';
import 'package:state_app/models/user.dart';


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
          ? InfoUser(user: state.user!)
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
          const Text('General', style:TextStyle( fontSize: 18, fontWeight: FontWeight.bold)),
          const Divider(),

          ListTile(title: Text('Name: ${user.name}'),),
          ListTile(title: Text('Age: ${user.age}'),),

          const Text('Professions', style:TextStyle( fontSize: 18, fontWeight: FontWeight.bold)),
          const Divider(),

          ...user.professions.map(
             (prof) => ListTile( title: Text(prof))
             ).toList()



        ],
      )
    );
  }
}