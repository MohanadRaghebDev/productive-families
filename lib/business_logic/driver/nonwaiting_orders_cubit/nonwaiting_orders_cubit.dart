import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/constants.dart';
import '../../../constants/end_points.dart';
import '../../../data/data_provider/remote/dio_helper.dart';
import '../../../data/requests/drivers/orders/nonwaiting_orders_request.dart';
import '../../../data/responses/drivers/orders/nonwaiting_orders_response.dart';
import 'nonwaiting_orders_states.dart';

class NonwaitingOrdersCubit extends Cubit<NonwaitingOrdersState> {
  NonwaitingOrdersCubit() : super(NonwaitingOrdersInitialState());

  static NonwaitingOrdersCubit get(context) => BlocProvider.of(context);

  // Todo: Create OrdersObject
  // List<OrdersObject> orders = [];

  getNonwaitingOrders(int page) async {
    emit(LoadingGetNonwaitingOrdersState());
    try {
      Response response = await DioHelper.getData(
        url: DELIVERY_REPRESENTATIVE_NON_WAITING_ORDERS_SCREEN,
        query: NonWaitingOrdersRequest(page: page, language: AppLang).toJson(),
      );
      if (response.statusCode != 201) {
        emit(
            ErrorGetNonwaitingOrdersState(response.statusMessage ?? DEF_ERROR));
        return;
      }
      NonWaitingOrdersResponse nonWaitingOrdersResponse =
          NonWaitingOrdersResponse.fromJson(response.data);
      // Todo: Use nonWaitingOrdersResponse to fill the list above with the orders
      // orders.addAll(nonWaitingOrdersResponse.orders);
      emit(SuccessGetNonwaitingOrdersState());
    } catch (exception) {
      emit(ErrorGetNonwaitingOrdersState(exception.toString()));
    }
  }
}
