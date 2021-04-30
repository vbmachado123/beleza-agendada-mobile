import 'package:beleza_agendada/models/customer.dart';
import 'package:beleza_agendada/service/api.dart' as api;

class AuthController {
  AuthController();

  static login(String email, String password) async {

  }

  static signUp(Customer customer) async {
    var signUpResult = await api.ApiClientService.signUp(customer);
    print(signUpResult);
  }

}
