import 'package:flutter/material.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Shop"),
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            //Logo
            DrawerHeader(
              // This removes the default bottom border line
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide.none),
              ),
              child: Image.asset('lib/images/test.png'),
            ),

            // shop tile
            ListTile(
              leading: Icon(
                Icons.home,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              title: Text("Shop"),
              onTap: () => {Navigator.pushNamed(context, '/shop_page')},
            ),

            // cart tile
            ListTile(
              leading: Icon(
                Icons.shopping_cart,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              title: Text("Cart"),
              onTap: () => {
                Navigator.pop(context),
                Navigator.pushNamed(context, '/cart_page'),
              },
            ),
          ],
        ),
      ),
    );
  }
}
