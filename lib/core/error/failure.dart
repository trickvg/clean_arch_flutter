import 'package:equatable/equatable.dart';

class Failure extends Equatable {
  final String? message;

  Failure({this.message});

  @override
  List<dynamic> get props => {message};
}

class ServerFailure extends Failure {
  @override
  String get message => "Unable to continue.";
}

class NotFoundFailure extends Failure {
  @override
  String get message => "Not Found.";
}
