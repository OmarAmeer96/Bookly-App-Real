// REPOSITORY PATTERN
// This class indicates what's this feature (home feature) is going to do.

import 'package:bookly_app/Core/errors/failures.dart';
import 'package:bookly_app/Core/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeatureedBooks();
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks({required String category});
}
