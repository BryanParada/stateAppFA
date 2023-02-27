import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';
import 'package:state_app/models/user.dart';
import 'package:state_app/services/user_service.dart';


class Page2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StreamBuilder(
          stream: userService.userStream, 
          builder: (BuildContext context, AsyncSnapshot<User> snapshot) {
            return snapshot.hasData
            ? Text('Name: ${snapshot.data?.name}')
            : Text('Age: ${snapshot.data?.age}');
          },
        ),
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
                  age: 30 );

                userService.loadUser(newUser);
              },
            ),

            MaterialButton(
              child: Text('Change Age', style: TextStyle(color: Colors.white)),
              color: Colors.blue,
              onPressed: (){
                userService.changeAge(20);
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