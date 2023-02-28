

// import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:state_app/models/user.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState>{

  UserCubit(): super(UserInitial() );

  void selectUser( User user){
    emit( new UserActive(user) );
  }


}