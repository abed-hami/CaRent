import 'package:flutter/material.dart';
import 'renter.dart';
class BillWidget extends StatefulWidget {
  const BillWidget({super.key});

  @override
  State<BillWidget> createState() => _BillWidgetState();
}

class _BillWidgetState extends State<BillWidget> {
  @override
  Widget build(BuildContext context) {
    final renter = ModalRoute.of(context)!.settings.arguments as Renter;
    return Center(child: Column(children: [

        const SizedBox(height: 10),

        Text(renter.toString(), style: const TextStyle(color: Colors.lightGreen, fontSize: 24, fontWeight: FontWeight.bold)),

        const SizedBox(height: 10),

        ElevatedButton(onPressed: () {

          Navigator.of(context).pop();

        },

            child: const Icon(Icons.navigate_before, size: 50)

        )

      ]),

      );
  }
}

