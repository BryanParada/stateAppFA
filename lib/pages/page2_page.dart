import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_app/bloc/user/user_bloc.dart';
import 'package:state_app/models/user.dart';


class Page2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

 final userBloc = BlocProvider.of<UserBloc>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text('Page2')
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              child: Text('Asign User', style: TextStyle(color: Colors.white)),
              color: Colors.blue,
              onPressed: (){

                final newUser = User( 
                  name: 'Bry',
                  age: 35,
                  professions: ['FullStack Developer']
                );

                //BlocProvider.of<UserBloc>(context, listen: false)
                userBloc.add(ActivateUser(newUser)); //.add para disparar un evento
              },
            ),

            MaterialButton(
              child: Text('Change Age', style: TextStyle(color: Colors.white)),
              color: Colors.blue,
              onPressed: (){
                userBloc.add(ChangeUserAge(25)); //.add para disparar un evento
              },
            ),
            MaterialButton(
              child: Text('Add Profession', style: TextStyle(color: Colors.white)),
              color: Colors.blue,
              onPressed: (){

                userBloc.add(AddProfession(' new profession'));
              },
            )
          ],
        ),
     ),
   );
  }
}