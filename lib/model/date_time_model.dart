class DateTimeModel {
  final String day;
  final String number;
  DateTimeModel({required this.day, required this.number});
  static List<DateTimeModel> listDate = [
    DateTimeModel(day: 'Tue', number: '8'),
    DateTimeModel(day: 'Wed', number: '9'),
    DateTimeModel(day: 'The', number: '10'),
    DateTimeModel(day: 'Fri', number: '11'),
    DateTimeModel(day: 'Sat', number: '12'),
  ];
  static List<String> timimgs = [
    '11:30 AM',
    '12:50 AM',
    '3:30 PM',
    '05:30 PM',
    '09:00 PM'
  ];
}
