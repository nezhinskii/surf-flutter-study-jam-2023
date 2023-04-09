import 'package:hive/hive.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/models/ticket.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/repositories/tickets_repository.dart';

class TicketsHive implements TicketsRepository{

  final Box<Ticket> _ticketBox;

  TicketsHive(this._ticketBox);

  @override
  void addTicket(Ticket ticket) {
    _ticketBox.add(ticket);
  }

  @override
  List<Ticket> getAll() {
    return _ticketBox.values.toList();
  }

  @override
  void update(int index, Ticket newValue) {
    _ticketBox.putAt(index, newValue);
  }

  @override
  Ticket? getAt(int index) {
    return _ticketBox.getAt(index);
  }

}