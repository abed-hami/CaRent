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
