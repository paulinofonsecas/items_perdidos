import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'client_home_event.dart';
part 'client_home_state.dart';

class ClientHomeBloc extends Bloc<ClientHomeEvent, ClientHomeState> {
  ClientHomeBloc() : super(const ClientHomeInitial()) {
    on<CustomClientHomeEvent>(_onCustomClientHomeEvent);
  }

  FutureOr<void> _onCustomClientHomeEvent(
    CustomClientHomeEvent event,
    Emitter<ClientHomeState> emit,
  ) {
    // TODO: Add Logic
  }
}
