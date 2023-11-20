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
                value: 10,
                onChanged: (value) {
                  setState(() {
                    timeduration = value as int;
                    widget.selectedCar.setDuration(10);
                  });
                },
              ),
              Text("10-15 days",style:TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
              Radio(
                groupValue: timeduration,
                value: 16,
                onChanged: (value) {
                  setState(() {
                    timeduration = value as int;
                    widget.selectedCar.setDuration(16);
                  });
                },
              ),
              Text("16-30 days",style:TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
              Radio(
                groupValue: timeduration,
                value: 30,
                onChanged: (value) {
                  setState(() {
                    timeduration = value as int;
                    widget.selectedCar.setDuration(30);
                  });
                },
              ),
              Text("30+",style:TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
              // Add more details as needed
            ],
          ),
          Text(widget.selectedCar.getTotal().toString(),style:TextStyle(fontSize: 30,),)
        ],
      ),
    );
  }
}
