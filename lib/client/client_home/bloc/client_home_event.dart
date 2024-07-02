part of 'client_home_bloc.dart';

abstract class ClientHomeEvent  extends Equatable {
  const ClientHomeEvent();

  @override
  List<Object> get props => [];

}

/// {@template custom_client_home_event}
/// Event added when some custom logic happens
/// {@endtemplate}
class CustomClientHomeEvent extends ClientHomeEvent {
  /// {@macro custom_client_home_event}
  const CustomClientHomeEvent();
}
