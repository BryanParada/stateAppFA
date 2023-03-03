//USER_STATE: estado como luce la data, como mantengo la informacion en el state
part of 'user_bloc.dart';

@immutable
abstract class UserState { //abstract no podremos crear instancias de esta clase

  final bool existUser;
  final User? user;

  const UserState({
    this.existUser = false, 
    this.user
    });
}

class UserInitialState extends UserState{
  const UserInitialState(): super(existUser: false, user: null);

}

class UserSetState extends UserState{
  final User newUser;
  const UserSetState(this.newUser)
    : super(existUser: true, user: newUser);

}