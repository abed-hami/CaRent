import 'package:carent/bill.dart';
import 'package:flutter/material.dart';
import 'renter.dart';
class InfoWidget extends StatefulWidget {
  const InfoWidget({super.key});

  @override
  State<InfoWidget> createState() => _InfoWidgetState();
}

class _InfoWidgetState extends State<InfoWidget> {
  final TextEditingController _controllerName = TextEditingController();

  final TextEditingController _controllerCard = TextEditingController();
  @override

  void dispose() {

    _controllerName.dispose();

    _controllerCard.dispose();

    super.dispose();

  }

  void openBill() {

    try {

      String name =(_controllerName.text);

      String card = (_controllerCard.text);

      Navigator.of(context).push(

          MaterialPageRoute(builder: (context) => const BillWidget(),

// we send data using the settings and pass to it an Employee object

              settings: RouteSettings(arguments: Renter(name, card))

          )

      );

    }

    catch(e) {

      print(e); // better to remove print in release version

    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(child: Column(children: [

          const SizedBox(height: 10),

          SizedBox(width: 200, height: 50,

            child: TextField(controller: _controllerName,

                decoration: const InputDecoration(border: OutlineInputBorder(), hintText: 'Enter Your Name')),

          ),

          const SizedBox(height: 10),

          SizedBox(width: 200, height: 50,

            child: TextField(controller: _controllerCard,

                decoration: const InputDecoration(border: OutlineInputBorder(), hintText: 'Enter Your Card Serial Num')),

          ),

          const SizedBox(height: 10),

          ElevatedButton(onPressed: openBill,

              child: const Icon(Icons.done, size: 50)

          )

        ]),

        )
    );
  }
}
