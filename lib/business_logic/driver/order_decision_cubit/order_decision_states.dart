abstract class OrderDecisionState {}

class OrderDecisionInitialState extends OrderDecisionState {}

class LoadingGetOrderDecisionState extends OrderDecisionState {}

class SuccessGetOrderDecisionState extends OrderDecisionState {}

class ErrorGetOrderDecisionState extends OrderDecisionState {
  final String error;

  ErrorGetOrderDecisionState(this.error);
}