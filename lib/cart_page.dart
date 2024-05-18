import 'package:flutter/material.dart';
import 'global_variables.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: ListView.builder(
        itemCount: cart.length,
        itemBuilder: (context, index) {
          final cartItem = cart[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: const Color.fromARGB(255, 211, 211, 211),
              radius: 30,
              backgroundImage: AssetImage('${cartItem['imageURL']}'),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.delete,
                color: Color.fromARGB(255, 145, 41, 34),
              ),
            ),
            title: Text(
              '${cartItem['title']}',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            subtitle: Text(
              'Size: ${cartItem['sizes']}',
            ),
          );
        },
      ),
    );
  }
}
