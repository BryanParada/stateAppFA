import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_app/controllers/user_controller.dart';
import 'package:state_app/models/user.dart';


class Page2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    print(Get.arguments);
    print(Get.arguments['name']);
    
    final userCtrl = Get.find<UserController>();

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
                userCtrl.loadUser(User(name: 'bry', age: 35));
                Get.snackbar('User assigned',
                 'User Bry assigned',
                 backgroundColor:   Colors.white,
                 boxShadows: [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 10
                  )
                 ]);
              },
            ),

            MaterialButton(
              child: Text('Change Age', style: TextStyle(color: Colors.white)),
              color: Colors.blue,
              onPressed: (){
                userCtrl.changeAge(25);
              },
            ),
            MaterialButton(
              child: Text('Add Profession', style: TextStyle(color: Colors.white)),
              color: Colors.blue,
              onPressed: (){
                userCtrl.addProfession('Profession #${userCtrl.professionsCount +1 }'); //userCtrl.user.value.professions.length +1
              },
              
            ),

              MaterialButton(
              child: Text('Change theme', style: TextStyle(color: Colors.white)),
              color: Colors.blue,
              onPressed: (){
                Get.changeTheme(Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
              },
              
            ),
                          
          ],
        ),
     ),
   );
  }
}