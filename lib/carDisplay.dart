import 'package:carent/car.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'car.dart';



class Display extends StatelessWidget {
  const Display({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(

        title: const Text('CARENT'),
        titleTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold

        ),
        backgroundColor:  Colors.amber[500],






      ),
      body:
         ListView.builder(
          itemCount: cars.length,
          itemBuilder: (context, index) {
            return Column(

              children: [
                SizedBox(height:10),
                ListTile(
                  leading: Image(
                    image: AssetImage(cars[index].image, ),width:100,height:200
                  ),
                  title: Text(cars[index].model,style: TextStyle(fontSize: 18),),
                  subtitle: Text('Rent Price: \$${cars[index].getTotal()}', style: TextStyle(fontSize: 15),),
                  /*onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SingleCar(selectedPizza: cars[index]),
                  ),
                );
              },*/
                ),
                SizedBox(height: 10), // Adjust the height according to your preference
              ],
            );
           },
          ),

    );
  }
}








