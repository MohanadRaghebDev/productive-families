import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/constants.dart';
import '../../../constants/end_points.dart';
import '../../../data/data_provider/remote/dio_helper.dart';
import '../../../data/requests/drivers/orders/order_details_request.dart';
import '../../../data/responses/drivers/orders/order_details_response.dart';
import 'order_details_states.dart';

class OrderDetailsCubit extends Cubit<OrderDetailsState> {
  OrderDetailsCubit() : super(OrderDetailsInitialState());

  static OrderDetailsCubit get(context) => BlocProvider.of(context);

  getOrderDetails(int storeId, int page) async {
    emit(LoadingGetOrderDetailsState());
    try {
      Response response = await DioHelper.getData(
        url: DELIVERY_REPRESENTATIVE_ORDERS_DETAILS_SCREEN,
        query: OrderDetailsRequest(
                order_id: storeId, language: AppLang, page: page)
            .toJson(),
      );
      if (response.statusCode != 201) {
        emit(ErrorGetOrderDetailsState(response.statusMessage ?? DEF_ERROR));
        return;
      }
      OrderDetailsResponse orderDetailsResponse =
          OrderDetailsResponse.fromJson(response.data);
      // Todo: Use orderDetailsResponse
      emit(SuccessGetOrderDetailsState());
    } catch (exception) {
      emit(ErrorGetOrderDetailsState(exception.toString()));
    }
  }
}
