import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_app/bloc/user/user_cubit.dart';
import 'package:state_app/models/user.dart';


class Page1Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page1'),
        actions: [
          IconButton(onPressed: (){
            context.read<UserCubit>().deleteUser();
          }, icon: Icon(Icons.exit_to_app))
        ],
      ),
      body: BodyScaffold(),
     floatingActionButton: FloatingActionButton(
      child: Icon( Icons.accessibility_new),
      onPressed: () => Navigator.pushNamed(context, 'page2'),
     ),
   );
  }
}

class BodyScaffold extends StatelessWidget { 
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserState>(
      builder: (_, state) { 
        print(state);


        //VERSION SWITCH
        switch ( state.runtimeType ){
          
          case UserInitial:
            return Center(child: Text('There is no information for the user'));  
          break;

          case UserActive:
            return InfoUser(user: (state as UserActive).user);
          break;

          default:
            return Center(child: Text('Not recognized State'),);
        }

        //VERSION IF
        // if ( state is UserInitial){
        //   return Center(child: Text('There is no information for the user'));
        // }else if(state is UserActive){
        //   return InfoUser(user: state.user);
        // } else{
        //   return Center(child: Text('Not recognized State'),);
        // }
        
       },
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

          ListTile(title: Text('Name: ${user.name}'),),
          ListTile(title: Text('Age: ${user.age}'),),

          Text('Professions', style:TextStyle( fontSize: 18, fontWeight: FontWeight.bold)),
          Divider(),

          ...user.professions.map(
            (profession) => ListTile( title: Text(profession))
            ).toList()

        ],
      )
    );
  }
}