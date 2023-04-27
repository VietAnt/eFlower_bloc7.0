part of 'favorite_bloc.dart';

abstract class FavoriteEvent extends Equatable {
  const FavoriteEvent();

  @override
  List<Object> get props => [];
}

class StartFavorite extends FavoriteEvent {}

//*Thêm_Sản_Phẩm
class AddFavoriteProduct extends FavoriteEvent {
  final Product product;

  const AddFavoriteProduct(this.product);

  @override
  List<Object> get props => [product];
}

//*Xóa_Sản_Phẩm
class RemoveFavoriteProduct extends FavoriteEvent {
  final Product product;

  const RemoveFavoriteProduct(this.product);

  @override
  List<Object> get props => [product];
}
