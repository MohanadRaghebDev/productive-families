import 'package:dio/dio.dart';
import 'package:productive_families/constants/constant_methods.dart';
import 'package:productive_families/constants/end_points.dart';
import 'package:productive_families/data/data_provider/remote/dio_helper.dart';
import 'package:productive_families/data/models/user_models/auth/user_register_model.dart';

import '../../../models/providers/auth/register.dart';

class ProvidersRegisterRequest {
  static Future providersRegisterRequest({
    required String phone,
    required String name,
    required String password,
    required bool acceptTerms,
  }) async {
    try {
      Response response = await DioHelper.postData(url: PROVIDERS_REGISTER, data: {
        'device_token': 'zee_device',
        'type': 'users',
        'phone': phone,
        'password': password,
        'accept_terms': acceptTerms?1:0,
        'name': name,
      });
      printResponse(response.data.toString());
      return ProvidersRegisterModel.fromJson(response.data);
    } catch (error) {
      printError(error.toString());
      return null;
    }
  }
}
