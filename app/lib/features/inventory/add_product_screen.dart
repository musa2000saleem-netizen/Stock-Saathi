import 'package:flutter/material.dart';

class AddProductScreen extends StatefulWidget {
const AddProductScreen({super.key});

@override
State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {

final nameController = TextEditingController();
final skuController = TextEditingController();
final priceController = TextEditingController();
final quantityController = TextEditingController();

@override
Widget build(BuildContext context) {

```
return Scaffold(
  appBar: AppBar(
    title: const Text("Add Product"),
  ),

  body: Padding(
    padding: const EdgeInsets.all(16),

    child: Column(
      children: [

        TextField(
          controller: nameController,
          decoration: const InputDecoration(
            labelText: "Product Name",
          ),
        ),

        TextField(
          controller: skuController,
          decoration: const InputDecoration(
            labelText: "SKU",
          ),
        ),

        TextField(
          controller: priceController,
          decoration: const InputDecoration(
            labelText: "Price",
          ),
          keyboardType: TextInputType.number,
        ),

        TextField(
          controller: quantityController,
          decoration: const InputDecoration(
            labelText: "Quantity",
          ),
          keyboardType: TextInputType.number,
        ),

        const SizedBox(height: 24),

        ElevatedButton(
          onPressed: () {

          },
          child: const Text("Save Product"),
        )

      ],
    ),
  ),
);
```

}
}
