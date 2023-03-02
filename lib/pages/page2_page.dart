import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter/material.dart';
import 'package:state_app/bloc/user/user_cubit.dart';
import 'package:state_app/models/user.dart';


class Page2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final userCubit = context.read<UserCubit>();

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

                final newUser = new User(
                  name: 'bry',
                  age: 30,
                  professions: ['Full stack developer', 'musician']
                  );

                userCubit.selectUser(newUser); // context.bloc deprecado, importar flutter_bloc

              },
            ),

            MaterialButton(
              child: Text('Change Age', style: TextStyle(color: Colors.white)),
              color: Colors.blue,
              onPressed: (){

                userCubit.changeAge(50);

              },
            ),
            MaterialButton(
              child: Text('Add Profession', style: TextStyle(color: Colors.white)),
              color: Colors.blue,
              onPressed: (){
                userCubit.addProfession();
              },
            )
          ],
        ),
     ),
   );
  }
}