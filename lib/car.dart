class Car{
  String model;
  String description;
  int price;
  bool insurance=false;
  int duration =1;
  String image;

  Car(this.model, this.description,this.price,this.image);

  String getImage(){
    return image;
  }

  String getModel(){
    return model;
  }

  String getDescription(){
    return description;
  }
  int getprice(){
    return this.price;
  }
  void setDuration(int dur) {
    this.duration = dur;

    if (dur >= 10 && dur < 20) {
      price = getprice() + 100;
    } else if (dur >= 20 && dur < 30) {
      price = getprice() + 150;
    } else {
      price = getprice() + 200;
    }
  }



  int getDuration(){
    return duration;
  }

  int getTotal(){
    int insuranceFees= insurance?100:0;
    int fPrice = price+insuranceFees;

    if(duration==1){
      return fPrice;
    }
    else if(duration==2){
      return (fPrice+100);
    }
    return fPrice+200;

  }

}

List<Car> cars=[

  Car("Mercedes C300", "2015, Full option, AC, Bluetooth, Electric Windows",100,"assets/c300.jpg"),
  Car("Honda Civic", "2017, Full option, AC, Bluetooth, Electric Windows",80,"assets/civic-2017.jpeg"),
  Car("Hyundai Elantra", "2013, Full option, AC, Bluetooth, Electric Windows",65,"assets/elantra-2013.jpg"),
  Car("Toyota Corolla", "2023, Full option, AC, Bluetooth, Electric Windows",130,"assets/corolla-2023.jpg"),
  Car("BMW X3", "2010, Full option, AC, Bluetooth, Electric Windows",89,"assets/x3-2010.jpg"),
  Car("Kia Picanto", "2020, Full option, AC, Bluetooth, Electric Windows",75,"assets/picanto-2020.jpg"),
  Car("Range Rover Sport", "2020, Full option, AC, Bluetooth, Electric Windows",180,"assets/rangeroverSport.jpeg"),



];
