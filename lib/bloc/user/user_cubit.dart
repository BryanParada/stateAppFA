

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

  void changeAge(int age){

    final currentState = state;
    if(currentState is UserActive){
      // currentState.user.age = 30; // <--mutacion
      // emit( UserActive(currentState.user));

      final newUser = currentState.user.copyWithUser(age: 33);
      emit( UserActive(newUser));
    }
  }

  void addProfession(){
    
    final currentState = state;
    if(currentState is UserActive){
      
      final newProfessions = [
        ...currentState.user.professions,
        'Profession ${ currentState.user.professions.length +1 }'
      ];
      final newUser = currentState.user.copyWithUser( professions: newProfessions );
      emit(UserActive(newUser));
 
    }

  }

  void deleteUser(){
    emit(UserInitial());
  }


}