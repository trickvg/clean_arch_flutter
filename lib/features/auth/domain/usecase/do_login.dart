

import 'package:clean_arch_flutter/core/error/failure.dart';
import 'package:clean_arch_flutter/core/usecase/usecase.dart';
import 'package:clean_arch_flutter/features/auth/domain/entities/user.dart';
import 'package:clean_arch_flutter/features/auth/domain/repositories/do_login_repository.dart';
import 'package:dartz/dartz.dart';

class DoLoginParams {
  final String email;
  final String password;

  DoLoginParams({required this.email, required this.password});
}


class DoLogin extends UseCase<User, DoLoginParams> {
  final DoLoginRepository _repository;

  DoLogin(this._repository);

  @override
  Future<Either<Failure, User>> call(DoLoginParams params) async {
    return await _repository.doLogin(
      email: params.email, password: params.password);
    
  } 
}