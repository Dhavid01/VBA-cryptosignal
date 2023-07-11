import 'package:flutter/material.dart';
import 'package:vba_crypto_signal/core/enums/store_state.dart';
import 'package:vba_crypto_signal/core/utils/app_logger.dart';
import 'package:vba_crypto_signal/models/failure.dart';
abstract class BaseState {
  late final _logger = AppLogger(BaseState);
  late final ValueNotifier<StoreState> _state =
      ValueNotifier<StoreState>(StoreState.initial);
  // late final ValueNotifier<StoreState> _state = StoreState.initial.obs;
  // late final ValueNotifier<int> _state3 = 7.obs;// ValueNotifier<int>(7)
  // ValueNotifier<StoreState> get state => _state;

  void setStoreState(StoreState state) {
    if (state != _state.value) {
      _state.value = state;
    }
  }

  void handleError(Object e, [Object? stackTrace]) {
    if (e is Failure) throw e;
    _logger.e(e);
    if (stackTrace != null) _logger.i(stackTrace);
  }
}
