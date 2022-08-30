part of 'providers_auth_cubit.dart';

@immutable
abstract class ProvidersAuthStates {}

class ProvidersAuthInitial extends ProvidersAuthStates {}

class ProvidersLoginLoadingState extends ProvidersAuthStates {}

class ProvidersLoginSuccessState extends ProvidersAuthStates {}

class ProvidersLoginErrorState extends ProvidersAuthStates {
  final String? message;
  final int? status;

  ProvidersLoginErrorState(this.message, this.status);
}

class ProvidersRegisterLoadingState extends ProvidersAuthStates {}

class ProvidersRegisterSuccessState extends ProvidersAuthStates {}

class ProvidersRegisterErrorState extends ProvidersAuthStates {
  final String? message;

  ProvidersRegisterErrorState(this.message);
}

class ProvidersRegisterConfirmPhoneLoadingState extends ProvidersAuthStates {}

class ProvidersRegisterConfirmPhoneSuccessState extends ProvidersAuthStates {
  final String? message;

  ProvidersRegisterConfirmPhoneSuccessState(this.message);
}

class ProvidersRegisterConfirmPhoneErrorState extends ProvidersAuthStates {
  final String? message;

  ProvidersRegisterConfirmPhoneErrorState(this.message);
}

class ProvidersRegisterResendConfirmationCodeLoadingState extends ProvidersAuthStates {}

class ProvidersRegisterResendConfirmationCodeSuccessState extends ProvidersAuthStates {}

class ProvidersRegisterResendConfirmationCodeErrorState extends ProvidersAuthStates {
  final String? message;

  ProvidersRegisterResendConfirmationCodeErrorState(this.message);
}

class ProvidersLogoutLoadingState extends ProvidersAuthStates {}

class ProvidersLogoutSuccessState extends ProvidersAuthStates {}

class ProvidersLogoutErrorState extends ProvidersAuthStates {
  ProvidersLogoutErrorState();
}
