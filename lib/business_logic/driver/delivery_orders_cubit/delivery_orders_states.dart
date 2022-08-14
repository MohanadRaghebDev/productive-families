abstract class DeliveryOrdersState {}

class DeliveryOrdersInitialState extends DeliveryOrdersState {}

class LoadingGetDeliveryOrdersState extends DeliveryOrdersState {}

class SuccessGetDeliveryOrdersState extends DeliveryOrdersState {}

class ErrorGetDeliveryOrdersState extends DeliveryOrdersState {
  final String error;

  ErrorGetDeliveryOrdersState(this.error);
}