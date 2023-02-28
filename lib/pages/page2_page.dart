import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_app/models/user.dart';
import 'package:state_app/services/user_service.dart';


class Page2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final userService = Provider.of<UserService>(context);

    return Scaffold(
      appBar: AppBar(
        title: userService.existsUser
        ? Text('Name: ${ userService.user?.name}')
        : Text('Page2')
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              child: Text('Asign User', style: TextStyle(color: Colors.white)),
              color: Colors.blue,
              onPressed: (){
                
                final newUser = new User(name: 'Bry', age: 30);
                userService.user = newUser;

              },
            ),

            MaterialButton(
              child: Text('Change Age', style: TextStyle(color: Colors.white)),
              color: Colors.blue,
              onPressed: (){
                userService.changeAge(45);
              },
            ),
            MaterialButton(
              child: Text('Add Profession', style: TextStyle(color: Colors.white)),
              color: Colors.blue,
              onPressed: (){},
            )
          ],
        ),
     ),
   );
  }
}