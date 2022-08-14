import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class HistoryDetail extends StatelessWidget {
  const HistoryDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff3AA0CB),
        title: Text(
          'ID: 12345',
          style: TextStyle(fontFamily: 'Poppins'),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  'Detail Pesanan',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff3AA0CB)),
                ),
              ),
              ListTile(
                title: Text('Nama'),
                subtitle: Text('Susanto'),
              ),
              ListTile(
                title: Text('Lokasi Jemput'),
                subtitle: Text('Pasar Tradisional Tebas'),
              ),
              ListTile(
                title: Text('Lokasi Tujuan'),
                subtitle: Text('Pontianak'),
              ),
              ListTile(
                title: Text('Tanggal Keberangkatan'),
                subtitle: Text('12 Agustus 2022'),
              ),
              ListTile(
                title: Text('Jam Keberangkatan'),
                subtitle: Text('08.00'),
              ),
              ListTile(
                title: Text('Jumlah Kursi'),
                subtitle: Text('2'),
              ),
              ListTile(
                title: Text('Total Bayar'),
                subtitle: Text('Rp. 120.000'),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  'Informasi Driver',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff3AA0CB)),
                ),
              ),
              ListTile(
                title: Text('Nama'),
                subtitle: Text('Samsudin'),
              ),
              ListTile(
                title: Text('Mobil'),
                subtitle: Text('Toyota'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: TimelineTile(
                        endChild: Text(
                          'Driver siap menjemputmu tanggal 12 Agustus 2022',
                          style: TextStyle(
                              fontFamily: 'Poppins', color: Colors.black),
                        ),
                        isFirst: true,
                        indicatorStyle:
                            IndicatorStyle(color: Color(0xff3AA0CB)),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: TimelineTile(
                        endChild: Text(
                          'Driver sedang dalam perjalanan ke lokasimu',
                          style: TextStyle(
                              fontFamily: 'Poppins', color: Colors.grey),
                        ),
                        indicatorStyle: IndicatorStyle(color: Colors.grey),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: TimelineTile(
                        endChild: Text(
                          'Perjalanan ke lokasi tujuan',
                          style: TextStyle(
                              fontFamily: 'Poppins', color: Colors.grey),
                        ),
                        indicatorStyle: IndicatorStyle(color: Colors.grey),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: TimelineTile(
                        endChild: Text(
                          'Sampai tujuan',
                          style: TextStyle(
                              fontFamily: 'Poppins', color: Colors.grey),
                        ),
                        indicatorStyle: IndicatorStyle(color: Colors.grey),
                        isLast: true,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 35,
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20))),
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xff3AA0CB))),
                      onPressed: () {},
                      child: Text(
                        'Sampai Tujuan',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                      ))),
              SizedBox(
                height: 20,
              ),
            ],
          )
        ],
      ),
    );
  }
}
