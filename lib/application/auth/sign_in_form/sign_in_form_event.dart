part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormEvent with _$SignInFormEvent {
  const factory SignInFormEvent.emailChanged(String email) = EmailChanged;
  const factory SignInFormEvent.passwordChanged(String password) =
      PasswordChanged;
  const factory SignInFormEvent.registerButtonPressed() = RegisterButtonPressed;
  const factory SignInFormEvent.signInButtonPressed() = SignInButtonPressed;
  const factory SignInFormEvent.signInWithGoogleButtonPressed() =
      SignInWithGoogleButtonPressed;
}
