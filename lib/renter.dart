import 'car.dart';

class Renter {
  String _name="";
  String _card="";
  int _days=1;
  DateTime now = DateTime.now();
  DateTime end =DateTime.now();
  int day_start = 0;
  int day_end = 0;
  int hour_start=0;
  int hour_end=0;
  int minute_start=0;
  int minute_end=0;

  DateTime calculateFutureDate() {
    return DateTime.now().add(Duration(days: _days));
  }



  Renter(String name, String card, int days) {

    if (name == "" || card== "") {

      throw Exception('enter valid name and card');

    }

    _name = name;

    _card = card;
    _days=days;
    end = calculateFutureDate();
    day_start=now.day;
    day_end = end.day;
    minute_end=end.month;
    minute_start=now.month;
    hour_start=now.year;
    hour_end=end.year;

  }

  @override
  String toString(){
    return "Dear $_name your selected car has ben rented successfully for $_days days!\n\nstart date: $day_start-$minute_start-$hour_start\nend date: $day_end-$minute_end-$hour_end\n";
  }
}