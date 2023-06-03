class CartItem {
  final String name;
  final double price;
  final String id;
  int quantity;

  CartItem(
      {required this.quantity, required this.name, required this.price, required this.id});

  static List<CartItem> cartItems = [];

  static double calculateTotalPrice() {
    double total = 0;
    for (var item in cartItems) {
      total += item.price * item.quantity;
    }
    return total;
  }

  static void removeCartItem(CartItem item) {
    cartItems.remove(item);
  }
}
