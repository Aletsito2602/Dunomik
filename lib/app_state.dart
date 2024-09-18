import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

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
      _referente = prefs.getString('ff_referente')?.ref ?? _referente;
    });
    _safeInit(() {
      _cupondereferido =
          prefs.getString('ff_cupondereferido') ?? _cupondereferido;
    });
    _safeInit(() {
      _CUPON = prefs.getString('ff_CUPON') ?? _CUPON;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  DocumentReference? _referente;
  DocumentReference? get referente => _referente;
  set referente(DocumentReference? value) {
    _referente = value;
    value != null
        ? prefs.setString('ff_referente', value.path)
        : prefs.remove('ff_referente');
  }

  bool _termsAccept = false;
  bool get termsAccept => _termsAccept;
  set termsAccept(bool value) {
    _termsAccept = value;
  }

  bool _countryAccept = false;
  bool get countryAccept => _countryAccept;
  set countryAccept(bool value) {
    _countryAccept = value;
  }

  List<String> _countrycode = [];
  List<String> get countrycode => _countrycode;
  set countrycode(List<String> value) {
    _countrycode = value;
  }

  void addToCountrycode(String value) {
    countrycode.add(value);
  }

  void removeFromCountrycode(String value) {
    countrycode.remove(value);
  }

  void removeAtIndexFromCountrycode(int index) {
    countrycode.removeAt(index);
  }

  void updateCountrycodeAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    countrycode[index] = updateFn(_countrycode[index]);
  }

  void insertAtIndexInCountrycode(int index, String value) {
    countrycode.insert(index, value);
  }

  List<String> _countryname = [];
  List<String> get countryname => _countryname;
  set countryname(List<String> value) {
    _countryname = value;
  }

  void addToCountryname(String value) {
    countryname.add(value);
  }

  void removeFromCountryname(String value) {
    countryname.remove(value);
  }

  void removeAtIndexFromCountryname(int index) {
    countryname.removeAt(index);
  }

  void updateCountrynameAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    countryname[index] = updateFn(_countryname[index]);
  }

  void insertAtIndexInCountryname(int index, String value) {
    countryname.insert(index, value);
  }

  String _cupondereferido = '';
  String get cupondereferido => _cupondereferido;
  set cupondereferido(String value) {
    _cupondereferido = value;
    prefs.setString('ff_cupondereferido', value);
  }

  String _challengeselectd = '-';
  String get challengeselectd => _challengeselectd;
  set challengeselectd(String value) {
    _challengeselectd = value;
  }

  double _challengeprice = 0.0;
  double get challengeprice => _challengeprice;
  set challengeprice(double value) {
    _challengeprice = value;
  }

  String _plataformaseleccionada = '';
  String get plataformaseleccionada => _plataformaseleccionada;
  set plataformaseleccionada(String value) {
    _plataformaseleccionada = value;
  }

  String _balanceselect = '';
  String get balanceselect => _balanceselect;
  set balanceselect(String value) {
    _balanceselect = value;
  }

  String _CUPON = 'NONE';
  String get CUPON => _CUPON;
  set CUPON(String value) {
    _CUPON = value;
    prefs.setString('ff_CUPON', value);
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
