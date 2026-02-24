import 'package:flutter/material.dart';
import 'package:sneakers/components/bottom_navbar.dart';
import 'package:sneakers/pages/cart_page.dart';
import 'package:sneakers/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  //NAVIGATOR FN
  void navigateBottomBar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    //pages
    List<Widget> pages = [const ShopPage(), const CartPage()];

    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu, color: Colors.black),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        title: const Text('Sneakers', style: TextStyle(color: Colors.black)),
      ),
      bottomNavigationBar: BottomNavBar(onTabChange: navigateBottomBar),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                //Logo
                DrawerHeader(
                  // This removes the default bottom border line
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide.none),
                  ),
                  child: Image.asset('lib/images/test.png'),
                ),

                //Menu
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Divider(color: Colors.grey[800]),
                ),

                const Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: Icon(Icons.home, color: Colors.white),
                    title: Text('Home', style: TextStyle(color: Colors.white)),
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: Icon(Icons.home, color: Colors.white),
                    title: Text('Home', style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),

            const Padding(
              padding: EdgeInsets.only(left: 25.0, bottom: 25.0),
              child: ListTile(
                leading: Icon(Icons.logout, color: Colors.white),
                title: Text('Logout', style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
      body: pages[selectedIndex],
    );
  }
}
