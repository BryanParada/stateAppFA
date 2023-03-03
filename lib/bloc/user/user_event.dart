//USER_EVENT: los eventos que voy a disparar (al pulsar un boton), me tiene que proveer el usuario y pasara por user_bloc.dart

part of 'user_bloc.dart';

@immutable
abstract class UserEvent{

}

class ActivateUser extends UserEvent{
  final User newUser;
  ActivateUser(this.newUser);
}

class ChangeUserAge extends UserEvent{
  final int age;
  ChangeUserAge(this.age);
}