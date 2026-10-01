import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import './screens/entregas/lista.dart';

void main() {
  runApp(DeliveryApp());
}

class DeliveryApp extends StatelessWidget {
  const DeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    Intl.defaultLocale = "pt_BR";
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Delivery',
      theme: ThemeData(
        useMaterial3: true,

        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.orange,
        ),

        primaryColor: Colors.orange.shade800,

        appBarTheme: AppBarTheme(
          backgroundColor: Colors.orange.shade800,
          foregroundColor: Colors.white,
          titleTextStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange.shade700,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),

        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.orange.shade700,
          foregroundColor: Colors.white,
        ),

        inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(),
        ),
      ),

      home: ListaEntregas(),
    );
  }
}
