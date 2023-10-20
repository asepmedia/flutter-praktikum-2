import 'package:flutter/material.dart';

class KonversiWidget extends StatefulWidget {
  final String? label1;
  final String? label2;
  final String? operationType;
  final num? operationValue;
  const KonversiWidget(
      {super.key,
      this.label1,
      this.label2,
      this.operationType,
      this.operationValue});

  @override
  State<KonversiWidget> createState() => _KonversiWidgetState();
}

class _KonversiWidgetState extends State<KonversiWidget> {
  num _value1 = 0;
  num _value2 = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Text("${widget.label1}", style: const TextStyle(fontSize: 20)),
            const SizedBox(
              height: 10,
            ),
            TextField(
              decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      borderSide: BorderSide(color: Colors.black, width: 1.5)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      borderSide:
                          BorderSide(color: Colors.black87, width: 1.5)),
                  hintText: "Masukkan angka"),
              onChanged: (value) {
                _onCalculation(value);
              },
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$_value1 ${widget.label1}",
                style: const TextStyle(fontSize: 20)),
            const Text(" = ", style: TextStyle(fontSize: 20)),
            Text("$_value2 ${widget.label2}",
                style: const TextStyle(fontSize: 20)),
          ],
        )
      ],
    );
  }

  _onCalculation(String value) {
    setState(() {
      if (value.isNotEmpty) {
        var result = double.parse(value);
        _value1 = result;
        num operationValue = 1000;

        if (widget.operationValue != null) {
          operationValue = widget.operationValue!;
        }

        String operationType = "/";

        if (widget.operationType != null) {
          operationType = widget.operationType!;
        }
        if (operationType == "*") {
          _value2 = result * operationValue;
        } else {
          _value2 = result / operationValue;
        }

        _value2 = double.parse(_value2.toStringAsFixed(6));
      } else {
        _value1 = 0;
        _value2 = 0;
      }
    });
  }
}
