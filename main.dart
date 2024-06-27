import 'package:flutter/material.dart';
import 'package:ukl_paket1/akunn.dart';
import 'package:ukl_paket1/homepage.dart';
import 'package:ukl_paket1/splashscreen.dart';
import 'package:ukl_paket1/transaksi.dart';

void main() {
  runApp(MyApp());
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => SplashScreen(),
      '/beranda': (context) => homepage(),
      '/transaksi': (context) => TransaksiPage(),
      '/akun': (context) => akun(),
    },
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    );
  }
}