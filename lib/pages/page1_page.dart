import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_app/controllers/user_controller.dart';
import 'package:state_app/pages/page2_page.dart';


class Page1Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final userCtrl = Get.put(UserController());

    return Scaffold(
      appBar: AppBar(
        title: Text('Page1')
      ),
      body: Obx( () =>  userCtrl.existUser.value
            ? InfoUser()
            : NoInfo()
             ),
     floatingActionButton: FloatingActionButton(
      child: Icon( Icons.accessibility_new),
      // onPressed: () => Navigator.pushNamed(context, 'page2'),
      // onPressed: () => Get.to(Page2Page()),
      onPressed: () => Get.toNamed('page2', arguments: {
        'name': 'bry',
        'age': 30
      }) //<- nombre de la ruta en main
     ),
   );
  }
}

class NoInfo extends StatelessWidget { 

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center( 
        child: Text('There is no user selected')
      )
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