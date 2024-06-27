import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ukl_paket1/bottomnav.dart';

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Container(
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 202, 200, 200),
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
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(width: 10),
                    Container(
                        height: 150,
                        width: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Image(
                            image: AssetImage('images/banner.png'))),
                    Container(
                        margin: EdgeInsets.all(5),
                        width: 420,
                        height: 250,
                        padding: EdgeInsets.all(0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: Image(
                            image: AssetImage('images/banner.png'))),
                    Container(
                        margin: EdgeInsets.all(5),
                        width: 420,
                        height: 250,
                        padding: EdgeInsets.all(0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image(
                                image: AssetImage(
                              'images/banner.png',
                            )))),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                margin: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 0.2,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.blue,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Lokasi Saya',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            'Kota Malang, Kedungkandang',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Kategori Jasa',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Temukan kebutuhan servismu dibawah ini sesuai yang kamu butuhkan',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey.shade600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ]),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        width: 52,
                        height: 54,
                        child: Column(children: [
                          Image.asset(
                            "images/perluTukang.png",
                            width: 38,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Servis AC",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          )
                        ]),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            width: 52,
                            height: 54,
                            child: Column(children: [
                              Image.asset(
                                "images/perluTukang.png",
                                width: 38,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Servis Cat",
                                style: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.bold),
                              )
                            ]),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Container(
                                width: 52,
                                height: 54,
                                child: Column(children: [
                                  Image.asset(
                                    "images/perluTukang.png",
                                    width: 30,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Cctv",
                                    style: TextStyle(fontSize: 12),
                                  )
                                ]),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Container(
                                    width: 52,
                                    height: 54,
                                    child: Column(children: [
                                      Image.asset(
                                        "images/perluTukang.png",
                                        width: 25,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Rumah",
                                        style: TextStyle(fontSize: 12),
                                      )
                                    ]),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Card(
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Container(
                                        width: 52,
                                        height: 54,
                                        child: Column(children: [
                                          Image.asset(
                                            "images/perluTukang.png",
                                            width: 30,
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "Derek",
                                            style: TextStyle(fontSize: 12),
                                          )
                                        ]),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Penyedia Jasa Terdekat',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        width: 193,
                        height: 100,
                        child: Column(children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Servis Laptop Malang",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                              'Jl. Gajayana, ketawanggede,Kec.Lowokwaru, Kota Malang')
                        ]),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            width: 193,
                            height: 100,
                            child: Column(children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "PietComp",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                                textAlign: TextAlign.left,
                              ),
                              Text(
                                  'Gg. 3 No64, Bandungrejoso, Kec. Sukun, Kota Malang')
                            ]),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Artikel Terbaru',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 240,
                child: Stack(
                  children: [
                    Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      elevation: 10,
                      child: Column(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            height: 150,
                            child: Image.asset(
                              "images/berita1.png",
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 10,
                      child: SizedBox(
                        height: 70,
                        child: Column(children: [
                          Text(
                            "Update Aplikasi Terbaru",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          )
                        ]),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 240,
                child: Stack(
                  children: [
                    Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      elevation: 10,
                      child: Column(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            height: 150,
                            child: Image.asset(
                              "images/berita1.png",
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 10,
                      child: SizedBox(
                        height: 70,
                        child: Column(children: [
                          Text(
                            "Update Terbaru Untuk Mitra Tukang",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          )
                        ]),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 240,
                child: Stack(
                  children: [
                    Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      elevation: 10,
                      child: Column(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            height: 150,
                            child: Image.asset(
                              "images/berita1.png",
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 10,
                      child: SizedBox(
                        height: 70,
                        child: Column(children: [
                          Text(
                            "Update Terbaru Untuk Konsumen",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ]),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNav(selectedItem: 0),
    );
  }
}
