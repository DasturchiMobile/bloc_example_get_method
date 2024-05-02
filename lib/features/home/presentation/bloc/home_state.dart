part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}
final class HomeSuccessState extends HomeState{
  final HomeModel homeModel;
  HomeSuccessState({required this.homeModel});
}
final class HomeErrorState extends HomeState{
  final Failure failure;
  HomeErrorState({required this.failure});
}
