import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fibase_ecommerce/models/models.dart';

part 'favorite_event.dart';
part 'favorite_state.dart';

class FavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {
  FavoriteBloc() : super(FavoriteLoading());
  //*StartFavorite:
  Stream<FavoriteState> _mapStartFavoriteToState() async* {
    yield FavoriteLoading();
    try {
      await Future<void>.delayed(Duration(milliseconds: 1));
      yield const FavoriteLoaded();
    } catch (_) {}
  }

  //*AddFavoriteProduct: Thêm_Sản_Phẩm_Yêu_Thích
  Stream<FavoriteState> _mapAddFavoriteProductToState(
    AddFavoriteProduct event,
    FavoriteState state,
  ) async* {
    if (state is FavoriteLoaded) {
      try {
        yield FavoriteLoaded(
          favorite: Favorite(
            products: List.from(state.favorite.products)..add(event.product),
          ),
        );
      } catch (_) {}
    }
  }

  //*RemoveProduct: Xóa_sản_phẩm
  Stream<FavoriteState> _mapRemoveFavoriteProductToState(
    RemoveFavoriteProduct event,
    FavoriteState state,
  ) async* {
    if (state is FavoriteLoaded) {
      try {
        yield FavoriteLoaded(
            favorite: Favorite(
          products: List.from(state.favorite.products)..remove(event.product),
        ));
      } catch (_) {}
    }
  }

  @override
  Stream<FavoriteState> mapEventToState(
    FavoriteEvent event,
  ) async* {
    if (event is StartFavorite) {
      yield* _mapStartFavoriteToState();
    } else if (event is AddFavoriteProduct) {
      yield* _mapAddFavoriteProductToState(event, state);
    } else if (event is RemoveFavoriteProduct) {
      yield* _mapRemoveFavoriteProductToState(event, state);
    }
  }
}
