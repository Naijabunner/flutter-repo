import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakers/components/cart_item.dart';
import 'package:sneakers/models/cart.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          spacing: 15,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //headings
            const Text(
              'My Cart',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            //list of shoes in cart
            Expanded(
              child: ListView.builder(
                itemCount: value.getUserCart().length,
                itemBuilder: (context, index) {
                  return CartItem(shoe: value.getUserCart()[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
