import 'package:flutter/material.dart';
import 'package:food/models/cart_item.dart';
import 'package:food/models/food.dart';
import 'package:collection/collection.dart';
import 'package:intl/intl.dart';

class Restaurant extends ChangeNotifier {
  // list of food menu
  final List<Food> _menu = [
    // burgers
    Food(
      name: "Chân gà xả tắc",
      descripton: "Chân gà của THuyn.",
      imagePath: "lib/images/burgers/chan-ga.jpg",
      price: 5.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Thêm chân", price: 0.99),
        Addon(name: "Thêm xoài", price: 0.5),
      ],
    ),
    Food(
      name: "Classic beef burger",
      descripton:
          "A juicy, seasoned beef patty grilled to perfection, served on a fresh bun with lettuce, tomato, cheese, and your choice of toppings for a delicious, satisfying meal.",
      imagePath: "lib/images/burgers/burger1.jpg",
      price: 5.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra beef", price: 0.99),
        Addon(name: "Extra Bacon", price: 1.99),
        Addon(name: "Extra egg", price: 0.5),
      ],
    ),
    Food(
      name: "Cheeseburger",
      descripton:
          "A delicious beef patty topped with melted cheese, served with lettuce, tomato, and your favorite condiments.",
      imagePath: "lib/images/burgers/burger2.jpg",
      price: 6.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.5),
        Addon(name: "Extra Bacon", price: 1.99),
      ],
    ),
    Food(
      name: "Chicken Burger",
      descripton:
          "A tender grilled chicken breast with lettuce, tomato, and mayo on a toasted bun.",
      imagePath: "lib/images/burgers/burger3.jpg",
      price: 5.79,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Chicken", price: 1.49),
        Addon(name: "Avocado", price: 1.0),
      ],
    ),
    Food(
      name: "Spicy Beef Burger",
      descripton:
          "A fiery beef patty seasoned with spices, topped with jalapenos, cheese, and spicy sauce.",
      imagePath: "lib/images/burgers/burger4.jpg",
      price: 6.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Spicy Sauce", price: 0.5),
        Addon(name: "Extra Jalapenos", price: 0.5),
      ],
    ),
    Food(
      name: "Veggie Burger",
      descripton:
          "A delicious plant-based patty with lettuce, tomato, and avocado on a whole wheat bun.",
      imagePath: "lib/images/burgers/burger5.jpg",
      price: 5.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Avocado", price: 1.0),
        Addon(name: "Grilled Onions", price: 0.5),
      ],
    ),

    // salads
    Food(
      name: "Caesar Salad",
      descripton:
          "A classic Caesar salad with fresh romaine lettuce, Parmesan cheese, croutons, and a tangy Caesar dressing.",
      imagePath: "lib/images/salads/salad1.jpg",
      price: 4.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 1.99),
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Extra Croutons", price: 0.5),
      ],
    ),
    Food(
      name: "Greek Salad",
      descripton:
          "A healthy mix of cucumbers, tomatoes, olives, feta cheese, and onions with a light vinaigrette.",
      imagePath: "lib/images/salads/salad2.jpg",
      price: 5.49,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra Feta", price: 0.99),
        Addon(name: "Olives", price: 0.5),
      ],
    ),
    Food(
      name: "Garden Salad",
      descripton:
          "Fresh mixed greens with cucumbers, tomatoes, and carrots, served with your choice of dressing.",
      imagePath: "lib/images/salads/salad3.jpg",
      price: 3.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 1.99),
        Addon(name: "Avocado", price: 1.0),
      ],
    ),
    Food(
      name: "Tuna Salad",
      descripton:
          "A fresh salad with mixed greens, tuna, hard-boiled egg, and a lemon vinaigrette.",
      imagePath: "lib/images/salads/salad4.jpg",
      price: 6.49,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra Egg", price: 0.5),
        Addon(name: "Extra Tuna", price: 1.99),
      ],
    ),

    // sides
    Food(
      name: "French Fries",
      descripton:
          "Crispy golden French fries, perfectly seasoned and served hot.",
      imagePath: "lib/images/sides/side2.jpg",
      price: 2.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cheese Sauce", price: 0.99),
        Addon(name: "Extra Salt", price: 0.2),
      ],
    ),
    Food(
      name: "Onion Rings",
      descripton:
          "Crispy fried onion rings, seasoned and served with a side of dipping sauce.",
      imagePath: "lib/images/sides/side1.jpg",
      price: 3.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Sauce", price: 0.5),
        Addon(name: "Extra Onion", price: 0.5),
      ],
    ),
    Food(
      name: "Sweet Potato Fries",
      descripton:
          "Sweet and crispy fries made from fresh sweet potatoes, lightly salted.",
      imagePath: "lib/images/sides/side3.jpg",
      price: 3.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Salt", price: 0.2),
        Addon(name: "Honey Dip", price: 0.5),
      ],
    ),
    Food(
      name: "Mozzarella Sticks",
      descripton:
          "Breaded and fried mozzarella sticks served with marinara sauce.",
      imagePath: "lib/images/sides/side4.jpg",
      price: 4.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Sauce", price: 0.5),
        Addon(name: "Extra Cheese", price: 0.99),
      ],
    ),

    // desserts
    Food(
      name: "Vanilla Ice Cream",
      descripton:
          "Creamy vanilla ice cream, served in a bowl or a cone with optional toppings.",
      imagePath: "lib/images/desserts/dessert1.jpg",
      price: 3.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Chocolate Syrup", price: 0.5),
        Addon(name: "Sprinkles", price: 0.2),
      ],
    ),
    Food(
      name: "Chocolate Cake",
      descripton:
          "A rich and moist chocolate cake, topped with chocolate ganache.",
      imagePath: "lib/images/desserts/dessert2.jpg",
      price: 4.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Ganache", price: 0.5),
        Addon(name: "Whipped Cream", price: 0.5),
      ],
    ),
    Food(
      name: "Apple Pie",
      descripton:
          "A classic apple pie with a buttery crust and spiced apple filling.",
      imagePath: "lib/images/desserts/dessert3.jpg",
      price: 3.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Vanilla Ice Cream", price: 1.0),
      ],
    ),
    Food(
      name: "Brownie Sundae",
      descripton:
          "Warm chocolate brownie topped with vanilla ice cream, chocolate syrup, and whipped cream.",
      imagePath: "lib/images/desserts/dessert4.jpg",
      price: 5.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Brownie", price: 1.49),
        Addon(name: "Extra Syrup", price: 0.5),
      ],
    ),

    // drinks
    Food(
      name: "Lemonade",
      descripton:
          "A refreshing glass of freshly squeezed lemonade, served chilled.",
      imagePath: "lib/images/drinks/drink1.jpg",
      price: 1.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Mint", price: 0.5),
        Addon(name: "Extra Ice", price: 0.2),
      ],
    ),
    Food(
      name: "Iced Coffee",
      descripton:
          "Cold brewed coffee served over ice, with milk or cream as an option.",
      imagePath: "lib/images/drinks/drink2.jpg",
      price: 2.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Cream", price: 0.5),
        Addon(name: "Caramel Syrup", price: 0.5),
      ],
    ),
    Food(
      name: "Smoothie",
      descripton:
          "A refreshing fruit smoothie made with fresh fruits and yogurt.",
      imagePath: "lib/images/drinks/drink3.jpg",
      price: 4.49,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Fruit", price: 0.99),
        Addon(name: "Protein Powder", price: 1.0),
      ],
    ),
    Food(
      name: "Milkshake",
      descripton:
          "A creamy milkshake made with ice cream, available in vanilla, chocolate, or strawberry flavors.",
      imagePath: "lib/images/drinks/drink4.jpg",
      price: 3.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Whipped Cream", price: 0.5),
        Addon(name: "Extra Syrup", price: 0.5),
      ],
    ),
  ];

  // G E T T E R S

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

  // O P E R A T I O N S

  // user cart

  final List<CartItem> _cart = [];

  // add to cart

  void addToCart(Food food, List<Addon> selectedAddons) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      bool isSameFood = item.food == food;

      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameAddons && isSameAddons;
    });

    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      _cart.add(
        CartItem(
          food: food,
          selectedAddons: selectedAddons,
        ),
      );
    }
    notifyListeners();
  }

  // remove from cart

  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  // get total price of cart

  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  // get total numer item of cart

  int getTotalItemCount() {
    int totalItemCount = 0;
    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  // clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  // H E L P E R

  // generate a receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt.");
    receipt.writeln();

    String formattedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("---------");

    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt.writeln("Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }
    receipt.writeln("---------");
    receipt.writeln();
    receipt.writeln("Total item: ${getTotalItemCount()}");
    receipt.writeln("Total price: ${getTotalPrice()}");

    return receipt.toString();
  }

  // format double into money
  String _formatPrice(double price) {
    return "\$$price.toStringAsFixed(2)";
  }

  // format list addon into a string summary
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name}) (${_formatPrice(addon.price)})")
        .join(", ");
  }
}
