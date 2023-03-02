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

