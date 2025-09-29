// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'env_production.dart';

// **************************************************************************
// FlutterSecureDotEnvAnnotationGenerator
// **************************************************************************

class _$EnvProduction extends EnvProduction {
  const _$EnvProduction() : super._();

  static const String _encryptedValues =
      'eyJBUElfVVJMIjoiYUhSMGNEb3ZMekU1TWk0eE5qZ3VNVEl6TGpNNE9qTXdNREF2In0=';
  @override
  String get apiUrl => _get('API_URL');

  T _get<T>(String key, {T Function(String)? fromString}) {
    T parseValue(String strValue) {
      if (T == String) {
        return (strValue) as T;
      } else if (T == int) {
        return int.parse(strValue) as T;
      } else if (T == double) {
        return double.parse(strValue) as T;
      } else if (T == bool) {
        return (strValue.toLowerCase() == 'true') as T;
      } else if (T == Enum || fromString != null) {
        if (fromString == null) {
          throw Exception('fromString is required for Enum');
        }

        return fromString(strValue.split('.').last);
      }

      throw Exception('Type ${T.toString()} not supported');
    }

    final bytes = base64.decode(_encryptedValues);
    final stringDecoded = String.fromCharCodes(bytes);
    final jsonMap = json.decode(stringDecoded) as Map<String, dynamic>;
    if (!jsonMap.containsKey(key)) {
      throw Exception('Key $key not found in .env file');
    }
    final encryptedValue = jsonMap[key] as String;
    final decryptedValue = base64.decode(encryptedValue);
    final stringValue = String.fromCharCodes(decryptedValue);
    return parseValue(stringValue);
  }
}
