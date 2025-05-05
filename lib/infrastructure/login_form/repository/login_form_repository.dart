import 'package:task2/domain/login_form/repository/i_login_form_repository.dart';

import '../../core/storage/token_storage.dart';
import '../data_source/login_api.dart';

class LoginFormRepository implements ILoginFormRepository{

  final loginApi = LoginApi();
  final tokenStorage = TokenStorage();

  @override
  Future<bool> login({required String email, required password}) async {
    try{
      final result = await loginApi.login(email:email ,password:password);
      await tokenStorage.storeToken(result.token);
      return true;
    }catch(e) {
      throw UnimplementedError("Eooeee");
    }
  }

  @override
  Future<bool?> storetoken({required String token}) async{
    await tokenStorage.storeToken(token);
  }
}