import 'package:flutter/material.dart';
import 'package:tugas_praktikum2/widgets/konversi_widget.dart';

class KonversiDetail extends StatefulWidget {
  final String type;
  const KonversiDetail({super.key, required this.type});

  @override
  State<KonversiDetail> createState() => _KonversiDetailState();
}

class _KonversiDetailState extends State<KonversiDetail> {
  String get konversiType {
    if (widget.type == "1") {
      return "Konversi Massa";
    } else if (widget.type == "2") {
      return "Konversi Jarak";
    } else if (widget.type == "3") {
      return "Konversi Uang";
    } else if (widget.type == "4") {
      return "Konversi Area";
    } else if (widget.type == "5") {
      return "Konversi Volume";
    } else if (widget.type == "6") {
      return "Konversi Waktu";
    }
    return widget.type;
  }

  Widget get konversiWidget {
    if (widget.type == "1") {
      return const KonversiWidget(
        label1: "Gram",
        label2: "Kilogram",
      );
    } else if (widget.type == "2") {
      return const KonversiWidget(
        label1: "Meter",
        label2: "Kilometer",
      );
    } else if (widget.type == "3") {
      return const KonversiWidget(
        label1: "Rupiah",
        label2: "Dollar",
        operationValue: 15000,
      );
    } else if (widget.type == "4") {
      return const KonversiWidget(
        label1: "m persegi",
        label2: "km persegi",
        operationValue: 1000000,
      );
    } else if (widget.type == "5") {
      return const KonversiWidget(
        label1: "Liter",
        label2: "Mililiter",
        operationValue: 1000,
        operationType: "*",
      );
    } else if (widget.type == "6") {
      return const KonversiWidget(
        label1: "Jam",
        label2: "Menit",
        operationValue: 60,
        operationType: "*",
      );
    }

    return const Center(
      child: Text(
        'Ini adalah halaman konversi detail',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(konversiType),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[konversiWidget],
          ),
        ),
      ),
    );
  }
}
