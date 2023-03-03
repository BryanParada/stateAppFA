import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../models/user.dart'; //paquete mas ligero que material



part 'user_event.dart';
part 'user_state.dart';



class UserBloc extends Bloc<UserEvent, UserState>{ //<us, us>clases abstractas de los demas archivos
  UserBloc() : super( const UserInitialState()){

    //       usar emit para cambiar estado
    on<ActivateUser>( (event, emit){
      print('ActivateUser called');
      emit(UserSetState( event.newUser ));
    } );

    //ó
    // on<ActivateUser>( (event, emit) => emit( UserSetState( event.newUser ) ));

    on<ChangeUserAge>((event, emit) {
    print('ChangeUserAge Called'); 
      if ( !state.existUser) return; //tenemos acceso a state gracias a Bloc(linea13)
      print('will emit new state!');
      // state.user!.age = event.age; //mala practica - posible warning ya que se esta mutando el estado, se debe generar SIEMPRE un nuevo estado
      emit( UserSetState(state.user!.copyWith( age: event.age)));
    });

  } 



}