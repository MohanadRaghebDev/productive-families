import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/constants.dart';
import '../../../constants/end_points.dart';
import '../../../data/data_provider/remote/dio_helper.dart';
import '../../../data/requests/drivers/orders/recieved_order_request.dart';
import '../../../data/responses/drivers/orders/recieved_order_response.dart';
import 'recieved_order_states.dart';

class OrderDetailsCubit extends Cubit<RecievedOrderState> {
  OrderDetailsCubit() : super(RecievedOrderInitialState());

  static OrderDetailsCubit get(context) => BlocProvider.of(context);

  // Todo: Create OrdersObject
  // List<OrdersObject> orders = [];

  getRecievedOrders(int orderId, int page) async {
    emit(LoadingGetRecievedOrderState());
    try {
      Response response = await DioHelper.getData(
        url: DELIVERY_REPRESENTATIVE_RECIEVED_ORDERS_SCREEN,
        query: RecievedOrderRequest(
                order_id: orderId, language: AppLang)
            .toJson(),
      );
      if (response.statusCode != 201) {
        emit(ErrorGetRecievedOrderState(response.statusMessage ?? DEF_ERROR));
        return;
      }
      RecievedOrderResponse recievedOrderResponse =
          RecievedOrderResponse.fromJson(response.data);
      // Todo: Use recievedOrderResponse to fill the above list
      // orders.addAll(recievedOrderResponse.orders);
      emit(SuccessGetRecievedOrderState());
    } catch (exception) {
      emit(ErrorGetRecievedOrderState(exception.toString()));
    }
  }
}
