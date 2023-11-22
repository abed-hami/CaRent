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
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              renter.toString(),
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,

            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).popUntil((route) => route.isFirst);
              },
              child: const Icon(Icons.done, size: 50),
            ),
          ],
        ),
      ),
    );
  }
}
