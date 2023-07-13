import 'package:vba_crypto_signal/core/constants/api_routes.dart';
import 'package:vba_crypto_signal/core/data/remote/auth/auth_interface.dart';
import 'package:vba_crypto_signal/core/utils/app_logger.dart';
import 'package:vba_crypto_signal/core/utils/network_client.dart';

class AuthRepositoryImpl implements AuthRepository {
  final NetworkClient _networkClient = NetworkClient();
  final _log = appLogger(AuthRepository);

  @override
  Future login({required String email, required String password}) async {
    var response = await _networkClient
        .post(ApiRoute.login, body: {"email": email, "password": password});
    _log.i(response);
    return response;
  }
}
