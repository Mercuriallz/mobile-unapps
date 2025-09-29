import 'package:flutter_secure_dotenv/flutter_secure_dotenv.dart';
part 'env_development.g.dart';


@DotEnvGen(
  filename: '.env.development',
  fieldRename: FieldRename.screamingSnake,
)
abstract class EnvDevelopment {
  const factory EnvDevelopment() = _$EnvDevelopment;
  const EnvDevelopment._();
  
  String get apiUrl;
  

}