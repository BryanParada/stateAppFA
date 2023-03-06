

import 'package:get/get.dart';
import 'package:state_app/models/user.dart';

class UserController extends GetxController{

  var existUser = false.obs; //esto no es un bool, es un observable que emite valores booleanos
  var user = new User().obs;

  int get professionsCount{
    return user.value.professions.length;
  }

  void loadUser( User pUser){
    this.existUser.value = true;
    this.user.value = pUser;
  }

  void changeAge( int pAge){
    this.user.update((val) {
      val!.age = pAge;
    });
  }

  void addProfession(String profession){
    this.user.update((val) {
      val!.professions = [...val.professions, profession];
    });
  }

}