class ChairModel {
  final String rowSeats;
  final int seats;
  final List<int> freeSeats;
  ChairModel(
      {required this.freeSeats, required this.rowSeats, required this.seats});
  static List<ChairModel> listChairs = [
    ChairModel(freeSeats: [3, 6], rowSeats: 'A', seats: 6),
    ChairModel(freeSeats: [1, 3, 5], rowSeats: 'B', seats: 7),
    ChairModel(freeSeats: [2, 5], rowSeats: 'C', seats: 8),
    ChairModel(freeSeats: [1, 2, 5, 9], rowSeats: 'D', seats: 8),
    ChairModel(freeSeats: [3, 5, 7, 8, 9], rowSeats: 'E', seats: 8),
    ChairModel(freeSeats: [2, 4, 5, 6], rowSeats: 'F', seats: 8),
  ];
}
