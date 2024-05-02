import 'package:bloc/bloc.dart';
import 'package:bloc_example_get_method/error/failure.dart';
import 'package:bloc_example_get_method/features/home/data/model/home_model.dart';
import 'package:bloc_example_get_method/features/home/data/repository/home_repo_impl.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeFetchDataEvent>((event, emit) async{
      emit(HomeInitial());
      await Future.delayed(Duration(seconds: 5));
      final res = await HomeRepoImpl().fetchData();
      res.fold((l) => emit(HomeErrorState(failure: l)), (r) => emit(HomeSuccessState(homeModel: r)));
    });
  }
}
