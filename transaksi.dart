import 'package:flutter/material.dart';
import 'package:ukl_paket1/bottomnav.dart';

class TransaksiPage extends StatelessWidget {
  TransaksiPage({Key? key});

  final List<Item> items = [
    Item(
      name: "Didit Teknik",
      image: "images/perluTukang.png",
      konfirm: "26/04/2023 06:29",
      tagline: "5758 teknik",
      status: "Menunggu konfirmasi",
    ),
    Item(
      name: "Danish Jaya Teknik",
      image: "images/perluTukang.png",
      konfirm: "26/04/2023 06:29",
      tagline: "Danish Jaya teknik",
      status: "Menunggu konfirmasi",
    ),
    Item(
      name: "Free Kuota",
      image: "images/perluTukang.png",
      konfirm: "26/04/2023 06:25",
      tagline: " ",
      status: "Menunggu konfirmasi",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 201, 200, 200),
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 10),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Cari Kebutuhan Servismu",
                border: InputBorder.none,
                hintStyle: TextStyle(color: Color.fromARGB(255, 50, 50, 50)),
                icon:
                    Icon(Icons.search, color: Color.fromARGB(255, 50, 50, 50)),
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
      body: Container(
        margin: EdgeInsets.all(8),
        child: ListView.builder(
          padding: EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return InkWell(
              onTap: () {},
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                     margin: EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.transparent,
                            backgroundImage: AssetImage(item.image),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item.name,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  item.konfirm,
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      item.tagline,
                                      style: TextStyle(color: Colors.blue),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Text(
                                        item.status,
                                        style: TextStyle(color: Colors.yellow),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomNav(selectedItem: 1),
    );
  }
}

class Item {
  String name, image, konfirm, tagline, status;

  Item({
    required this.name,
    required this.image,
    required this.konfirm,
    required this.tagline,
    required this.status,
  });
}
