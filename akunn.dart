import 'package:flutter/material.dart';
import 'package:ukl_paket1/bottomnav.dart';

class akun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Container(
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 214, 213, 213),
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              )),
          child: Padding(
            padding: EdgeInsets.only(left: 10),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Cari Kebutuhan Servismu",
                border: InputBorder.none,
                hintStyle: TextStyle(color: Color.fromARGB(255, 50, 50, 50)),
                icon: Icon(
                  Icons.search,
                  color: Color.fromARGB(255, 50, 50, 50),
                ),
              ),
            ),
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: IconButton(
              icon: Icon(Icons.notifications, color: Colors.grey),
              onPressed: () {
                // Handle notification icon press
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Profile',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage('images/perluTukang.png'),
                    ),
                    Text(
                      'Aaliya',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'chilme@gmail.com',
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 14),
                    ),
                    Text(
                      '0848008168',
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 14),
                    ),
                  ],
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.lock),
                  title: Text('Ubah Password'),
                  onTap: () {
                    // Navigate to email edit page
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.message),
                  title: Text('Ketentuan Layanan'),
                  onTap: () {
                    // Navigate to change password page
                  },
                ),
                SizedBox(height: 16.0),
                Divider(),
                ListTile(
                  leading: Icon(Icons.lock),
                  title: Text('Kebijakan Privasi'),
                  onTap: () {
                    // Navigate to notifications settings page
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.message),
                  title: Text('Whatsapp Admin'),
                  onTap: () {
                    // Navigate to language settings page
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.logout),
                  iconColor: Colors.red,
                  title: Text('Keluar'),
                  textColor: Colors.red,
                  onTap: () {
                    // Navigate to language settings page
                  },
                ),
                Divider(),
                ListTile(
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: 16.0), // Atur padding horizontal
                  title: Center(
                    child: Text(
                      'Version V 1.3.6',
                      style: TextStyle(),
                    ),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNav(selectedItem: 4),
    );
  }
}
