abstract class RecievedOrderState {}

class RecievedOrderInitialState extends RecievedOrderState {}

class LoadingGetRecievedOrderState extends RecievedOrderState {}

class SuccessGetRecievedOrderState extends RecievedOrderState {}

class ErrorGetRecievedOrderState extends RecievedOrderState {
  final String error;

  ErrorGetRecievedOrderState(this.error);
}