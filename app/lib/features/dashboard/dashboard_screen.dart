import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
const DashboardScreen({super.key});

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text("Stock Saathi"),
),
body: Padding(
padding: const EdgeInsets.all(16),
child: Column(
crossAxisAlignment: CrossAxisAlignment.stretch,
children: [
const Text(
"Har Dukaan Ka Digital Saathi",
style: TextStyle(
fontSize: 24,
fontWeight: FontWeight.bold,
),
),
const SizedBox(height: 24),
ElevatedButton(
onPressed: () {},
child: const Text("➕ Naya Product Jodo"),
),
const SizedBox(height: 12),
ElevatedButton(
onPressed: () {},
child: const Text("💰 Bikri Record Karo"),
),
const SizedBox(height: 12),
ElevatedButton(
onPressed: () {},
child: const Text("📦 Stock Dekho"),
),
const SizedBox(height: 12),
ElevatedButton(
onPressed: () {},
child: const Text("📒 Udhaar"),
),
],
),
),
);
}
}