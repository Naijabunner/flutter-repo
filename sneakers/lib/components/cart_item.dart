import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakers/models/cart.dart';
import 'package:sneakers/models/shoe.dart';

class CartItem extends StatelessWidget {
  Shoe shoe;
  CartItem({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    //removefn
    void removeItemFromCart() {
      Provider.of<Cart>(context, listen: false).removeItemsFromCart(shoe);
    }

    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        leading: Image(image: AssetImage(shoe.imagePath)),
        title: Text(shoe.name),
        subtitle: Text(shoe.price.toString()),
        trailing: IconButton(
          icon: Icon(Icons.cancel, color: Colors.red),
          onPressed: () => removeItemFromCart(),
        ),
      ),
    );
  }
}
