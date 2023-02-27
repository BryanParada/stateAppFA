import 'dart:async';

import 'package:state_app/models/user.dart';

class _UserService {

  User? _user;

  StreamController<User> _userStreamController = new StreamController<User>();

  User? get user => this._user;
  bool get existsUser => ( this._user != null) ? true : false;

  Stream<User> get userStream => _userStreamController.stream; 
  
  void loadUser(User user){
    this._user = user;
    this._userStreamController.add(user);
  }

  void changeAge( int age){

    this._user?.age = age;
    this._userStreamController.add(this._user!);

  }



}

final userService = new _UserService();

