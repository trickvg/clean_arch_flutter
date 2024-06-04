import 'package:clean_arch_flutter/core/error/failure.dart';
import 'package:clean_arch_flutter/features/auth/domain/entities/user.dart';

abstract class DoLoginRepository {
  Future<Either<Failure, User>> doLogin(
      {required String email, required String password});
}
