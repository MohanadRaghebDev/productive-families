import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/constants.dart';
import '../../../constants/end_points.dart';
import '../../../data/data_provider/remote/dio_helper.dart';
import '../../../data/requests/drivers/orders/delivered_order_request.dart';
import '../../../data/responses/drivers/orders/delivered_order_response.dart';
import 'delivery_orders_states.dart';

class DeliveryOrdersCubit extends Cubit<DeliveryOrdersState> {
  DeliveryOrdersCubit() : super(DeliveryOrdersInitialState());

  static DeliveryOrdersCubit get(context) => BlocProvider.of(context);

  // Todo: Create OrdersObject
  // List<OrdersObject> orders = [];

  getDeliveryOrders(int storeId) async {
    emit(LoadingGetDeliveryOrdersState());
    try {
      Response response = await DioHelper.getData(
        url: DELIVERY_REPRESENTATIVE_DELIVERY_ORDERS_SCREEN,
        query: DeliveredOrderRequest(order_id: storeId, language: AppLang)
            .toJson(),
      );
      if (response.statusCode != 201) {
        emit(ErrorGetDeliveryOrdersState(response.statusMessage ?? DEF_ERROR));
        return;
      }
      DeliveredOrderResponse deliveredOrderResponse =
          DeliveredOrderResponse.fromJson(response.data);
      // Todo: Use storesResponse to fill the list above with the orders
      // orders.addAll(deliveredOrderResponse.orders);
      emit(SuccessGetDeliveryOrdersState());
    } catch (exception) {
      emit(ErrorGetDeliveryOrdersState(exception.toString()));
    }
  }
}
