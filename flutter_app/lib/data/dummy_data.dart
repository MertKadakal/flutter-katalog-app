import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/product.dart';

// Sepet simülasyonu için global liste
List<Product> cartItems = [];

// API simülasyonu
List<Product> dummyProducts = [];

Future<void> loadDummyProducts() async {
  if (dummyProducts.isEmpty) {
    final String response = await rootBundle.loadString('assets/data.json');
    final data = await json.decode(response);
    dummyProducts = (data as List).map((i) => Product.fromJson(i)).toList();
  }
}
