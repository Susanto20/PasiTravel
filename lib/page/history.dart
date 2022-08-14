import 'package:coba_flutter/page/history_detail.dart';
import 'package:flutter/material.dart';

class History extends StatelessWidget {
  const History({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff3AA0CB),
        title: Text(
          'Pesanan Anda',
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
      body: ListView(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Text(
                'Terbaru',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff3AA0CB)),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return HistoryDetail();
                }));
              },
              child: ListTile(
                  title: Text('ID : 12345'),
                  subtitle: Text('Dalam proses'),
                  trailing: Icon(Icons.keyboard_arrow_right_outlined)),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Text(
                'Terdahulu',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff3AA0CB)),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: ListTile(
                  title: Text('ID : 12345'),
                  subtitle: Text('Sampai tujuan'),
                  trailing: Icon(Icons.keyboard_arrow_right_outlined)),
            ),
            GestureDetector(
              onTap: () {},
              child: ListTile(
                title: Text('ID : 12345'),
                subtitle: Text('Sampai tujuan'),
                trailing: Icon(Icons.keyboard_arrow_right_outlined),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: ListTile(
                title: Text('ID : 12345'),
                subtitle: Text('Sampai tujuan'),
                trailing: Icon(Icons.keyboard_arrow_right_outlined),
              ),
            )
          ],
        ),
      ]),
    );
  }
}
