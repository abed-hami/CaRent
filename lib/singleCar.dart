import 'package:flutter/material.dart';
import 'car.dart';
import 'information.dart';
class SingleCar extends StatefulWidget {
  final Car selectedCar;

  const SingleCar({Key? key, required this.selectedCar}) : super(key: key);

  @override
  _SingleCarState createState() => _SingleCarState();
}

class _SingleCarState extends State<SingleCar> {
  int? timeduration =1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[500],
        title: Text(widget.selectedCar.getModel()),
      ),
      body: Column(
        children: [
          Image(
            image: AssetImage(widget.selectedCar.getImage()),
          ),
          SizedBox(height: 30,),
          Text(
            widget.selectedCar.getModel(),
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: EdgeInsets.only(left: 10), // Adjust the left padding as needed
            child: Text(
              widget.selectedCar.getDescription(),
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                letterSpacing: 2,
              ),
            ),
          ),


          SizedBox(height: 20,),

          DropdownButton<int>(
            value: timeduration,
            hint: Text("Select number of days"), // Displayed when no option is selected
            items: [
              DropdownMenuItem(
                value: 1,
                child: Text("1 day", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
              ),
              DropdownMenuItem(
                value: 2,
                child: Text("2 days", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
              ),
              DropdownMenuItem(
                value: 3,
                child: Text("3 days", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
              ),
              DropdownMenuItem(
                value: 4,
                child: Text("4 days", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
              ),
              DropdownMenuItem(
                value: 5,
                child: Text("5 days", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
              ),
              DropdownMenuItem(
                value: 6,
                child: Text("6 days", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
              ),
              DropdownMenuItem(
                value: 7,
                child: Text("7 days", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
              ),
              DropdownMenuItem(
                value: 8,
                child: Text("8 days", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
              ),
              DropdownMenuItem(
                value: 9,
                child: Text("9 days", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
              ),
              DropdownMenuItem(
                value: 10,
                child: Text("10 days(discount included)", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
              ),
              // Add more items as needed
            ],
            onChanged: (value) {
              setState(() {
                timeduration = value;
                widget.selectedCar.setDuration(value!);
              });
            },
          ),
          SizedBox(height: 30,),
          Center(
           child: Text('${widget.selectedCar.getTotal()}', style: TextStyle(fontSize: 21, color: Colors.red, fontWeight: FontWeight.w900)),
          )
          ,

          SizedBox(height: 30,),
          ElevatedButton(
            onPressed: (){
              Navigator.of(context).push(

                  MaterialPageRoute(builder: (context) => const InfoWidget())

              );
            },
            child:const Text(
              'Check out !',
              style: TextStyle(fontSize: 20), // Adjust the font size as needed
            ),
          )

        ],
      ),
    );
  }
}
