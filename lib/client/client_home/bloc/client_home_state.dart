part of 'client_home_bloc.dart';

/// {@template client_home_state}
/// ClientHomeState description
/// {@endtemplate}
class ClientHomeState extends Equatable {
  /// {@macro client_home_state}
  const ClientHomeState({
    this.customProperty = 'Default Value',
  });

  /// A description for customProperty
  final String customProperty;

  @override
  List<Object> get props => [customProperty];

  /// Creates a copy of the current ClientHomeState with property changes
  ClientHomeState copyWith({
    String? customProperty,
  }) {
    return ClientHomeState(
      customProperty: customProperty ?? this.customProperty,
    );
  }
}

/// {@template client_home_initial}
/// The initial state of ClientHomeState
/// {@endtemplate}
class ClientHomeInitial extends ClientHomeState {
  /// {@macro client_home_initial}
  const ClientHomeInitial() : super();
}
