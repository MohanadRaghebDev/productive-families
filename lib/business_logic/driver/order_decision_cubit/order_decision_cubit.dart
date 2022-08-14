import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/constants.dart';
import '../../../constants/end_points.dart';
import '../../../data/data_provider/remote/dio_helper.dart';
import '../../../data/requests/drivers/orders/order_decision_request.dart';
import '../../../data/responses/drivers/orders/order_decision_response.dart';
import 'order_decision_states.dart';

class OrderDecisionCubit extends Cubit<OrderDecisionState> {
  OrderDecisionCubit() : super(OrderDecisionInitialState());

  static OrderDecisionCubit get(context) => BlocProvider.of(context);

  getOrderDecision(int storeId, decision) async {
    emit(LoadingGetOrderDecisionState());
    try {
      Response response = await DioHelper.getData(
        url: DELIVERY_REPRESENTATIVE_ORDERS_DECISION_SCREEN,
        query:
            OrderDecisionRequest(order_id: storeId, language: AppLang, decision: decision).toJson(),
      );
      if (response.statusCode != 201) {
        emit(ErrorGetOrderDecisionState(response.statusMessage ?? DEF_ERROR));
        return;
      }
      OrderDecisionResponse orderDecisionResponse =
          OrderDecisionResponse.fromJson(response.data);
      // Todo: Use orderDecisionResponse
      emit(SuccessGetOrderDecisionState());
    } catch (exception) {
      emit(ErrorGetOrderDecisionState(exception.toString()));
    }
  }
}
