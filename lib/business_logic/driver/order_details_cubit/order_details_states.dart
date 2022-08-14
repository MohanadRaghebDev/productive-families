abstract class OrderDetailsState {}

class OrderDetailsInitialState extends OrderDetailsState {}

class LoadingGetOrderDetailsState extends OrderDetailsState {}

class SuccessGetOrderDetailsState extends OrderDetailsState {}

class ErrorGetOrderDetailsState extends OrderDetailsState {
  final String error;

  ErrorGetOrderDetailsState(this.error);
}