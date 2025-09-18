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
        title: const Text('Arrivage'),
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
          DropdownButton<int>(
            hint: Text("Selectionnez un produit"),
            value: selectedValue,
            items: productList.map(
              (product) {
                return DropdownMenuItem(
                  value: product['id'] as int,
                  child: Text(product['name']),
                );
              },
            ).toList(),
            onChanged: (int? value) {
              setState(() {
                selectedValue = value;
              });
            },
          ),
            SizedBox(
                    height: 20.toDouble(),
                  ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
            child: TextField(
              controller: qttController,
            ),
          ),

            SizedBox(
                    height: 40.toDouble(),
                  ),

          ElevatedButton(
            onPressed: () {
              final pr = productList
                  .firstWhere((product) => product['id'] == selectedValue);
              setState(() {
                pr['qtt'] += int.parse(qttController.text);
              });
              qttController.clear();
              selectedValue = null;
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Update ${pr["name"]}, set qtt to ${pr["qtt"]}'),
                  duration: Duration(seconds: 2), // Disparaît après 2 secondes
                ),
              );
            },
            child: Text('Ajouter'),
          ),
            SizedBox(
                    height: 100.toDouble(),
                  ),
        ],
      ),
    );
  }
}
