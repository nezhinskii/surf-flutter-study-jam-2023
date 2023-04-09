import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/models/ticket.dart';

abstract class TicketsRepository{
  void addTicket(Ticket ticket);
  List<Ticket> getAll();
}