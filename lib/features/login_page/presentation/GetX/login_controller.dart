import 'package:get/get.dart';
import '../screen/login_page.dart';

class LoginController extends GetxController {
  final LoginPage loginPage = LoginPage();



  RxString email = ''.obs;
  RxBool isValid = false.obs;

  void validateEmail(String value) {
    const emailPattern = r'^.+@.+\..+$';
    final regExp = RegExp(emailPattern);

    if (regExp.hasMatch(value)) {
      isValid.value = true;
    } else {
      isValid.value = false;
    }
    email.value = value;
  }
}
