abstract class NonwaitingOrdersState {}

class NonwaitingOrdersInitialState extends NonwaitingOrdersState {}

class LoadingGetNonwaitingOrdersState extends NonwaitingOrdersState {}

class SuccessGetNonwaitingOrdersState extends NonwaitingOrdersState {}

class ErrorGetNonwaitingOrdersState extends NonwaitingOrdersState {
  final String error;

  ErrorGetNonwaitingOrdersState(this.error);
}