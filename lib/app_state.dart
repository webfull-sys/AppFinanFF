import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _idCheckout = prefs.getString('ff_idCheckout') ?? _idCheckout;
    });
    _safeInit(() {
      _idCompra = prefs.getInt('ff_idCompra') ?? _idCompra;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _idCheckout = '';
  String get idCheckout => _idCheckout;
  set idCheckout(String value) {
    _idCheckout = value;
    prefs.setString('ff_idCheckout', value);
  }

  int _idCompra = 0;
  int get idCompra => _idCompra;
  set idCompra(int value) {
    _idCompra = value;
    prefs.setInt('ff_idCompra', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
