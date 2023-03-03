import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Page2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    print(Get.arguments);
    print(Get.arguments['name']);
    

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
              onPressed: (){},
            ),

            MaterialButton(
              child: Text('Change Age', style: TextStyle(color: Colors.white)),
              color: Colors.blue,
              onPressed: (){},
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