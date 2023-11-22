
class Renter{
  String _name="";
  String _card="";

  Renter(String name, String card) {

    if (name == "" || card== "") {

      throw Exception('enter valid name and card');

    }

    _name = name;

    _card = card;

  }

  @override
  String toString(){
    return "Dear $_name your selected car has ben rented successfully ! ";
  }
}