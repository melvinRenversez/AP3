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
      body: Center(
        child: Column(
          children: [
            DropdownButton<int>(
              hint: Text("Selectionnez votre produit"),
              value: selectedValue,
              items: productList.map(
                (product) {
                  return DropdownMenuItem<int>(
                    value: product["id"],
                    child: Text(product["name"]),
                  );
                },
              ).toList(),
              onChanged: (int? value) {
                setState(() {
                  selectedValue = value;
                });
              },
            ),
            TextField(
              controller: qttController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(),
            ),
            ElevatedButton(
              child: const Text('Valider'),
              onPressed: () {
                final newQtt = int.tryParse(qttController.text);
                final selectedProduct = productList[selectedValue! - 1];

                selectedProduct["qtt"] += newQtt!;

                ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          "Quantité mise à jour pour ${selectedProduct!['name']} ajout de $newQtt pour un total de ${selectedProduct['qtt']} ",
                        ),
                      ),
                    );
              },
            ),
          ],
        ),
      ),
    );
  }
}
