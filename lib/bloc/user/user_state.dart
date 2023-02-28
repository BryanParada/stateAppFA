part of 'user_cubit.dart';

@immutable
abstract class UserState{}

class UserInitial extends UserState{

  final existsUser = false;
 
  // @override
  // String toString() { 
  //   //para omitir usar instance of UserInitial
  //   return 'UserInitial: existsUser: false';
  // }
  
}

class UserActive extends UserState{
  final existsUser = true;
  final User user;

  UserActive(this.user);

}

