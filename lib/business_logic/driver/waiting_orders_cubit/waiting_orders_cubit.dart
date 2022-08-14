import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/constants.dart';
import '../../../constants/end_points.dart';
import '../../../data/data_provider/remote/dio_helper.dart';
import '../../../data/requests/drivers/orders/waiting_orders_request.dart';
import '../../../data/responses/drivers/orders/waiting_orders_response.dart';
import 'waiting_orders_states.dart';

class WaitingOrdersCubit extends Cubit<WaitingOrdersState> {
  WaitingOrdersCubit() : super(WaitingOrdersInitialState());

  static WaitingOrdersCubit get(context) => BlocProvider.of(context);

  // Todo: Create OrdersObject
  // List<OrdersObject> orders = [];

  getWaitingOrders(int page) async {
    emit(LoadingGetWaitingOrdersState());
    try {
      Response response = await DioHelper.getData(
        url: DELIVERY_REPRESENTATIVE_WAITING_ORDERS_SCREEN,
        query: WaitingOrdersRequest(page: page, language: AppLang).toJson(),
      );
      if (response.statusCode != 201) {
        emit(ErrorGetWaitingOrdersState(response.statusMessage ?? DEF_ERROR));
        return;
      }
      WaitingOrdersResponse waitingOrdersResponse =
          WaitingOrdersResponse.fromJson(response.data);
      // Todo: Use waitingOrdersResponse to fill the list above with the orders
      // orders.addAll(waitingOrdersResponse.orders);
      emit(SuccessGetWaitingOrdersState());
    } catch (exception) {
      emit(ErrorGetWaitingOrdersState(exception.toString()));
    }
  }
}
