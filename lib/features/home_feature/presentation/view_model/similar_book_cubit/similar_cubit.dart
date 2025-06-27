import 'package:bloc/bloc.dart';
import 'package:bookly11/features/home_feature/data/repos/home_repo.dart';
import 'package:meta/meta.dart';

import '../../../data/models/book_model.dart';

part 'similar_state.dart';

class SimilarCubit extends Cubit<SimilarState> {
  SimilarCubit(this.homeRepo) : super(SimilarInitial());

  final HomeRepo homeRepo;

  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarLoading());
    var result = await homeRepo.fetchSimilarBooks(category: category);();
    result.fold((failure) {
      emit(SimilarFailure(failure.errMessage));
    }, (books) {
      emit(SimilarSuccess(books));
    });
  }
}
