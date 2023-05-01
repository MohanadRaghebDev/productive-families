import 'package:dio/dio.dart';
import 'package:productive_families/constants/constant_methods.dart';
import 'package:productive_families/constants/constants.dart';
import 'package:productive_families/constants/end_points.dart';
import 'package:productive_families/data/data_provider/remote/dio_helper.dart';
import 'package:productive_families/data/models/providers/profile/provider_get_profile_model.dart';
import 'package:productive_families/data/models/user_models/profile/user_get_profile_model.dart';

class ProviderGetProfileRequest {
  Future providerGetProfileRequest() async {
    try {
      Response response = await DioHelper.postData(
          url: EP_PROVIDERS_PROFILE_SHOW, token: accessToken);
      printResponse(response.data.toString());
      return ProviderGetProfileModel.fromJson(response.data);
    } catch (error) {
      printError(error.toString());
      return null;
    }
  }
}
