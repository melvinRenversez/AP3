import 'package:flutter/material.dart';

class Arrivage extends StatefulWidget {
  const Arrivage({super.key});

  @override
  State<Arrivage> createState() => _ArrivageState();
}

class _ArrivageState extends State<Arrivage> {
  final List<Map<String, dynamic>> productList = [
    {'id': 1, 'name': 'Product 1', 'qtt': 6},
    {'id': 2, 'name': 'Product 2', 'qtt': 5},
    {'id': 3, 'name': 'Product 3', 'qtt': 4},
    {'id': 4, 'name': 'Product 4', 'qtt': 3},
    {'id': 5, 'name': 'Product 5', 'qtt': 2},
  ];

  int? selectedValue;
  final TextEditingController qttController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arrirvage'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: productList.length,
              itemBuilder: (context, index) {
                final product = productList[index];
                return ListTile(
                  title: Text(
                    product['name'],
                  ),
                  trailing: Text(
                    product["qtt"].toString(),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          DropdownButton(
            items: productList.map(
              (product) {
                return DropdownMenuItem(
                  value: product['id'],
                  child: Text(product['name']),
                );
              },
            ).toList(),
            onChanged: (value) {
              setState(() {
                selectedValue = value;
              });
            },
            value: selectedValue,
          ),

          TextField(
            controller: qttController,
          ),

          ElevatedButton(
            onPressed: () {
              product = productList[]
            },
            child: Text('Ajouter'),
          ),
        ],
      ),
    );
  }
}
