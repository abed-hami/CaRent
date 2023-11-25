import 'package:carent/bill.dart';
import 'package:flutter/material.dart';
import 'renter.dart';
class InfoWidget extends StatefulWidget {
  const InfoWidget({required this.selectedDays, super.key});
  final int selectedDays;
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

          MaterialPageRoute(builder: (context) => BillWidget(),

// we send data using the settings and pass to it an Employee object

              settings: RouteSettings(arguments: Renter(name, card, widget.selectedDays),)

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
        appBar: AppBar(

          title: const Text('CARENT'),
          titleTextStyle: const TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold

          ),
          backgroundColor:  Colors.amber[500],
        ),
       body: Center(child: Column(children: [

          const SizedBox(height: 150),
         Text("Fill out your info ",style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900,letterSpacing: 2),),
         const SizedBox(height: 20),

         SizedBox(
           width: 300,
           height: 70,
           child: TextField(
             controller: _controllerName,
             decoration: InputDecoration(
               border: OutlineInputBorder(
                 borderRadius: BorderRadius.all(Radius.circular(10)),
               ),
               hintText: 'Enter Your Name',
             ),
           ),
         ),

         const SizedBox(height: 10),

         SizedBox(
           width: 300,
           height: 70,
           child: TextField(
             controller: _controllerCard,
             decoration: InputDecoration(
               border: const OutlineInputBorder(
                 borderSide: BorderSide(
                   color: Colors.black,  // Border color
                   width: 7,           // Border width
                 ),
                 borderRadius: BorderRadius.all(Radius.circular(10)),
               ),
               hintText: 'Enter Your Card Serial Num',
             ),
           ),
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
