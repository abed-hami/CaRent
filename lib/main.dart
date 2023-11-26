
import 'package:flutter/material.dart';
import 'carDisplay.dart';
import 'car.dart';
import 'singleCar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: Home(),

    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

        appBar: AppBar(

          title: const Text('CARENT'),
          titleTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
              fontFamily:'Open Serif'

          ),
          backgroundColor:  Colors.amber[500],


          actions: [
            IconButton(icon: Icon(Icons.search), onPressed:(){
              Navigator.of(context).push(

                  MaterialPageRoute(builder: (context) => const Display())

              );
            }, iconSize: 35,)
          ],

        ),

        body: Container(

          child:
              Column(
                children: [
                  SizedBox(height: 1,),
                  Image.asset("assets/home.jpg", fit: BoxFit.fill,height: 235,),
                  SizedBox(height:40),

                  const SizedBox(height:40),

                  Text("Services", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, fontFamily:''),),
                  const SizedBox(height:40),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _ServiceCard('24/7 Support', Icons.call, ),
                      _ServiceCard('GPS Navigation', Icons.navigation),
                      _ServiceCard('Insurance Options', Icons.security),
                    ],
                  ),



                ],

              ),



        )

    );

  }
}

class _ServiceCard extends StatelessWidget {
  final String title;
  final IconData icon;

  const _ServiceCard(this.title, this.icon);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 40.0,
            color: Colors.orangeAccent,
          ),
          SizedBox(height: 8.0),
          Text(
            title,
            textAlign: TextAlign.center,

          ),
        ],
      ),
    );
  }
}






