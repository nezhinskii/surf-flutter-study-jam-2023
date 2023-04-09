import 'package:hive/hive.dart';

part 'ticket.g.dart';

@HiveType(typeId: 1)
enum TicketType {
  @HiveField(0)
  train,
  @HiveField(1)
  plane,
}

@HiveType(typeId: 0)
class Ticket {
  @HiveField(0)
  String title;
  @HiveField(1)
  String url;
  @HiveField(2)
  TicketType type;

  Ticket({
    required this.title,
    required this.url,
    required this.type});
}