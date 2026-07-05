import 'package:flutter/material.dart';
import 'features/dashboard/dashboard_screen.dart';

void main() {
runApp(const StockSaathiApp());
}

class StockSaathiApp extends StatelessWidget {
const StockSaathiApp({super.key});

@override
Widget build(BuildContext context) {
return MaterialApp(
debugShowCheckedModeBanner: false,
title: 'Stock Saathi',
theme: ThemeData(
colorSchemeSeed: Colors.green,
useMaterial3: true,
),
home: const DashboardScreen(),
);
}
}
