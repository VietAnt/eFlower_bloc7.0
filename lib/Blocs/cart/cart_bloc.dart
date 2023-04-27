import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fibase_ecommerce/models/models.dart';
import 'package:meta/meta.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartLoading());

  //*CartStart
  Stream<CartState> _mapCartStartedToState() async* {
    yield CartLoading();
    try {
      Future<void>.delayed(Duration(seconds: 1));
      yield CartLoaded();
    } catch (_) {}
  }

  //*CartProductAdd
  Stream<CartState> _mapCartProductAddedToState(
      CartProductAdded event, CartState state) async* {
    if (state is CartLoaded) {
      try {
        yield CartLoaded(
          cart: Cart(
              products: List.from(state.cart.products)..add(event.product)),
        );
      } catch (_) {}
    }
  }

  //*CartProductRemove
  Stream<CartState> _mapCartProductRemovedToState(
      CartProductRemoved event, CartState state) async* {
    if (state is CartLoaded) {
      try {
        yield CartLoaded(
          cart: Cart(
              products: List.from(state.cart.products)..remove(event.product)),
        );
      } catch (_) {}
    }
  }

  @override
  Stream<CartState> mapEventToState(CartEvent event) async* {
    if (event is CartStarted) {
      yield* _mapCartStartedToState();
    } else if (event is CartProductAdded) {
      yield* _mapCartProductAddedToState(event, state);
    } else if (event is CartProductRemoved) {
      yield* _mapCartProductRemovedToState(event, state);
    }
  }
}
