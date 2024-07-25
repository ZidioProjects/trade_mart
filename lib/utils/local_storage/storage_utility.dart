import 'package:get_storage.dart';

class TlocalStorage {
  static final TLocalStorage _instance = TLocalStorage._internal();

  factory TlocalStorage() {
    return _instance;
  }

  TlocalStorage._internal();

  final _storage = GetStorage();

  //Generic method tom save data
  Future<void> saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }

  //Generic method to read data
  T? readData<T>(String key) {
    return _storage.read<T>(key);
  }

  //generic method to remove data
  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  //clear all dta in storage
  Future<void> clearAll() async {
    await _storage.erase();
  }
}