import 'package:flutter/material.dart';
import 'car.dart';

class SingleCar extends StatefulWidget {
  final Car selectedCar;

  const SingleCar({Key? key, required this.selectedCar}) : super(key: key);

  @override
  _SingleCarState createState() => _SingleCarState();
}

class _SingleCarState extends State<SingleCar> {
  int? timeduration;

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
          Text(
            widget.selectedCar.getModel(),
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Text(
            widget.selectedCar.getDescription(),
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          Row(
            children: [
              Radio(
                groupValue: timeduration,
                value: 1,
                onChanged: (value) {
                  setState(() {
                    timeduration = value as int;
                    widget.selectedCar.setDuration(1);
                  });
                },
              ),
              Text("1 week",style:TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
              Radio(
                groupValue: timeduration,
                value: 2,
                onChanged: (value) {
                  setState(() {
                    timeduration = value as int;
                    widget.selectedCar.setDuration(2);
                  });
                },
              ),
              Text("2 weeks",style:TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
              Radio(
                groupValue: timeduration,
                value: 3,
                onChanged: (value) {
                  setState(() {
                    timeduration = value as int;
                    widget.selectedCar.setDuration(3);
                  });
                },
              ),
              Text("3 weeks",style:TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
              // Add more details as needed
            ],
          ),
          Text(widget.selectedCar.getTotal().toString(),style:TextStyle(fontSize: 30,),)
        ],
      ),
    );
  }
}
