import 'package:flutter/material.dart';

class ShoppingCartButton extends StatefulWidget {
  const ShoppingCartButton({super.key});
  @override
  State<StatefulWidget> createState() => _ShoppingCartButtonState();
}

class _ShoppingCartButtonState extends State<ShoppingCartButton> {
  bool is_success = false;
  void handleTap() {
    setState(() {
      is_success = !is_success;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: handleTap,
              child: Container(
                width: is_success ? 0 : 80.0,
                height: is_success ? 0 : 60.0,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: const Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            GestureDetector(
              onTap: handleTap,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 1000),
                width: is_success ? 200.0 : 0.0,
                height: is_success ? 60.0 : 0.0,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 30,
                    ),
                    Text(
                      'Added to cart',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
