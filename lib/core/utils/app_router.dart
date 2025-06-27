import 'package:bookly11/features/home_feature/presentation/view/book_details_view.dart';
import 'package:bookly11/features/home_feature/presentation/view/home_view.dart';
import 'package:bookly11/features/home_feature/presentation/view_model/similar_book_cubit/similar_cubit.dart';
import 'package:bookly11/features/search_feature/presentation/view/search_view.dart';
import 'package:bookly11/features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/home_feature/data/models/book_model.dart';
import '../../features/home_feature/data/repos/home_repo_impl.dart';
import 'service_locator.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) =>
            BlocProvider(
              create: (context) => SimilarCubit(getIt.get<HomeRepoImpl>()),
              child: BookDetailsView(bookModel: state.extra as BookModel,),
            ),
      ),
    ],
  );
}
