part of 'favorite_bloc.dart';

abstract class FavoriteState extends Equatable {
  const FavoriteState();

  @override
  List<Object> get props => [];
}

class FavoriteLoading extends FavoriteState {}

class FavoriteLoaded extends FavoriteState {
  final Favorite favorite;

  const FavoriteLoaded({this.favorite = const Favorite()});

  @override
  List<Object> get props => [favorite];
}

class FavoriteError extends FavoriteState {
  @override
  List<Object> get props => [];
}
