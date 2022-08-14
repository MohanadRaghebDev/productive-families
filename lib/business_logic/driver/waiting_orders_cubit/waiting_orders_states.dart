abstract class WaitingOrdersState {}

class WaitingOrdersInitialState extends WaitingOrdersState {}

class LoadingGetWaitingOrdersState extends WaitingOrdersState {}

class SuccessGetWaitingOrdersState extends WaitingOrdersState {}

class ErrorGetWaitingOrdersState extends WaitingOrdersState {
  final String error;

  ErrorGetWaitingOrdersState(this.error);
}