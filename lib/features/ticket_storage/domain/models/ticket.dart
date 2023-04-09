import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket.freezed.dart';

enum TicketType {train, plane}

@freezed
class Ticket with _$Ticket {
  const factory Ticket({
    required String title,
    required TicketType type,
    required String url,
  }) = _Ticket;

}