import 'package:flutter_secure_dotenv/flutter_secure_dotenv.dart';

part 'env_production.g.dart';

@DotEnvGen(
  filename: '.env.production',
  fieldRename: FieldRename.screamingSnake,
)
abstract class EnvProduction {
  const factory EnvProduction() = _$EnvProduction;
  const EnvProduction._();
  
  String get apiUrl;

}