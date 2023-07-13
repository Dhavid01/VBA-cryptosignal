import 'package:vba_crypto_signal/core/data/remote/auth/auth_interface.dart';
import 'package:vba_crypto_signal/core/utils/locator.dart';

class AuthServiceImpl implements AuthService {
  final AuthRepository _authRepository;

  AuthServiceImpl({
    AuthRepository? authRepository,
  }) : _authRepository = authRepository ?? locator();

  @override
  Future login({required String email, required String password}) async{
    var response = _authRepository.login(email: email, password: password);
    return response;
  }
}
