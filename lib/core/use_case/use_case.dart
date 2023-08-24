import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../error/failure.dart';

abstract class BaseUseCase<T, parameter> {
  Future<Either<Failure, T>> call(parameter parameter);
}

class NoParameter extends Equatable {
  @override
  List<Object?> get props => [];
}
