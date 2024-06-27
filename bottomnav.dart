import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  final int selectedItem;
  BottomNav({super.key, required this.selectedItem});

  @override
  State<BottomNav> createState() => _BottomNavState();
}
class _BottomNavState extends State<BottomNav> {
  int selectedNavbar = 0;
  void changeSelectedNavBar(int index) {
    setState(() {
      selectedNavbar = index;
    });
    if (index == 0) {
      Navigator.pushNamed(context, '/beranda');
    } else if (index == 1) {
      Navigator.pushNamed(context, '/transaksi');
    }else if (index == 2)  {
      Navigator.pushNamed(context, '/Daftartukang');
    }else if (index == 3) {
      Navigator.pushNamed(context, '/saldopage');
    }else if (index == 4) {
      Navigator.pushNamed(context, '/akun');
    }
  }
@override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.timelapse),
          label: 'transaksi',
        ),
           BottomNavigationBarItem(
          icon: Icon(Icons.store_sharp),
          label: 'Daftar Tukang',
        ),
          BottomNavigationBarItem(
          icon: Icon(Icons.wallet),
          label: 'Isi Saldo',
        ),
          BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          label: 'Akun',
        ),
      ],
selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: true,
      currentIndex: widget.selectedItem,            
      onTap: changeSelectedNavBar,
);
}
}