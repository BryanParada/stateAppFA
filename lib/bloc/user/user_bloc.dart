import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../models/user.dart'; //paquete mas ligero que material



part 'user_event.dart';
part 'user_state.dart';



class UserBloc extends Bloc<UserEvent, UserState>{ //<us, us>clases abstractas de los demas archivos
  UserBloc() : super( const UserInitialState()){

    //       usar emit para cambiar estado
    on<ActivateUser>( (event, emit){

    } );

  } 



}