import 'package:flutter/material.dart';
import 'package:tugas_praktikum2/screens/konversi_detail.dart';

class KonversiListWidget extends StatelessWidget {
  const KonversiListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    _onChangePage({String type = "1"}) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => KonversiDetail(type: type)),
      );
    }

    return SizedBox(
      height: 600,
      width: double.infinity,
      child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          crossAxisCount: 2,
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  _onChangePage(type: "1");
                },
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.accessibility_new),
                    Text("Massa"),
                  ],
                )),
            ElevatedButton(
                onPressed: () {
                  _onChangePage(type: "2");
                },
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.social_distance),
                    Text("Jarak"),
                  ],
                )),
            ElevatedButton(
                onPressed: () {
                  _onChangePage(type: "3");
                },
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.currency_exchange),
                    Text("Uang"),
                  ],
                )),
            ElevatedButton(
                onPressed: () {
                  _onChangePage(type: "4");
                },
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.shape_line),
                    Text("Area"),
                  ],
                )),
            ElevatedButton(
                onPressed: () {
                  _onChangePage(type: "5");
                },
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.circle_rounded),
                    Text("Volume"),
                  ],
                )),
            ElevatedButton(
                onPressed: () {
                  _onChangePage(type: "6");
                },
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.hourglass_bottom),
                    Text("Waktu"),
                  ],
                )),
          ]),
    );
  }
}
