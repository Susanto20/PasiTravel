import 'package:coba_flutter/page/history.dart';
import 'package:coba_flutter/page/login_page.dart';
import 'package:coba_flutter/page/profile.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:cool_alert/cool_alert.dart';

class TaxiPage extends StatefulWidget {
  String value;
  TaxiPage({required this.value});

  @override
  State<TaxiPage> createState() => _TaxiPageState();
}

class _TaxiPageState extends State<TaxiPage> {
  String? lokasi;
  String? jam;
  String? tanggal;
  String? kursi;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff3AA0CB),
          title: Text('Betukang Travel'),
        ),
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 80,
                color: Color(0xff3AA0CB),
                alignment: Alignment.bottomLeft,
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(widget.value,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            color: Colors.white)),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Profile();
                  }));
                },
                child: ListTile(
                  iconColor: Colors.black,
                  leading: Icon(Icons.account_circle),
                  title: Text('Profil',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 16)),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return History();
                  }));
                },
                child: ListTile(
                  iconColor: Colors.black,
                  leading: Icon(Icons.history),
                  title: Text('Riwayat Pesanan',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 16)),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => LoginPage()),
                      (route) => false);
                },
                child: ListTile(
                  iconColor: Colors.black,
                  leading: Icon(Icons.logout_rounded),
                  title: Text('Keluar',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 16)),
                ),
              ),
            ],
          ),
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.only(left: 40, bottom: 5),
              child: Text(
                'Lokasi Jemput',
                style: TextStyle(fontFamily: 'Poppins'),
              ),
            ),
            Container(
              height: 40,
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                style: TextStyle(fontFamily: 'Poppins'),
                showCursor: true,
                cursorColor: Color(0xff3AA0CB),
                textAlign: TextAlign.start,
                textAlignVertical: TextAlignVertical.top,
                decoration: InputDecoration(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 40, bottom: 5),
              child: Text(
                'Lokasi Tujuan',
                style: TextStyle(fontFamily: 'Poppins'),
              ),
            ),
            Container(
                height: 40,
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: DropdownButton<String>(
                    items: const <DropdownMenuItem<String>>[
                      DropdownMenuItem(
                        value: 'Sambas  ',
                        child: Text('Sambas  '),
                      ),
                      DropdownMenuItem(
                          value: 'Pontianak  ', child: Text('Pontianak  '))
                    ],
                    value: lokasi,
                    hint: Text(
                      '',
                      style: TextStyle(fontFamily: 'Poppins'),
                    ),
                    onChanged: (String? value) {
                      setState(() {
                        lokasi = value;
                      });
                    })),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 40, bottom: 5),
              child: Text(
                'Tanggal Berangkat',
                style: TextStyle(fontFamily: 'Poppins'),
              ),
            ),
            Container(
                height: 40,
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: DropdownButton<String>(
                    items: const <DropdownMenuItem<String>>[
                      DropdownMenuItem(
                        value: '14 Agustus',
                        child: Text('14 Agustus'),
                      ),
                      DropdownMenuItem(
                          value: '15 Agustus', child: Text('15 Agustus'))
                    ],
                    value: tanggal,
                    hint: Text(
                      '',
                      style: TextStyle(fontFamily: 'Poppins'),
                    ),
                    onChanged: (String? value) {
                      setState(() {
                        tanggal = value;
                      });
                    })),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 40, bottom: 5),
              child: Text(
                'Jam Keberangkatan',
                style: TextStyle(fontFamily: 'Poppins'),
              ),
            ),
            Container(
                height: 40,
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: DropdownButton<String>(
                    items: const <DropdownMenuItem<String>>[
                      DropdownMenuItem(
                        value: '13.00     ',
                        child: Text('13.00     '),
                      ),
                      DropdownMenuItem(
                          value: '15.00     ', child: Text('15.00          '))
                    ],
                    value: jam,
                    hint: Text(
                      '',
                      style: TextStyle(fontFamily: 'Poppins'),
                    ),
                    onChanged: (String? value) {
                      setState(() {
                        jam = value;
                      });
                    })),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 40, bottom: 5),
              child: Text(
                'Jumlah Kursi',
                style: TextStyle(fontFamily: 'Poppins'),
              ),
            ),
            Container(
                height: 40,
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: DropdownButton<String>(
                    items: const <DropdownMenuItem<String>>[
                      DropdownMenuItem(
                        value: '1',
                        child: Text('1'),
                      ),
                      DropdownMenuItem(
                        value: '2',
                        child: Text('2'),
                      ),
                      DropdownMenuItem(
                        value: '3',
                        child: Text('3'),
                      ),
                      DropdownMenuItem(
                          value: '4', child: Text('4                  '))
                    ],
                    value: kursi,
                    hint: Text(
                      '',
                      style: TextStyle(fontFamily: 'Poppins'),
                    ),
                    onChanged: (String? value) {
                      setState(() {
                        kursi = value;
                      });
                    })),
            SizedBox(
              height: 20,
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
                    onPressed: () {
                      CoolAlert.show(
                          context: context,
                          confirmBtnText: 'Oke',
                          text:
                              'Total Bayar : Rp. 100.000\n\nSilakan transfer ke nomor rekening ini :\n123456789',
                          confirmBtnTextStyle: TextStyle(
                              fontFamily: 'Poppins', color: Colors.white),
                          type: CoolAlertType.info,
                          backgroundColor: Color(0xff3AA0CB),
                          title: 'Pesanan Anda');
                    },
                    child: Text(
                      'Pesan',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                        color: Colors.white,
                      ),
                    ))),
          ],
        ));
  }
}
