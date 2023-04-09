import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/models/ticket.dart';

part 'ticket_storage_event.dart';
part 'ticket_storage_state.dart';
part 'ticket_storage_bloc.freezed.dart';

class TicketStorageBloc extends Bloc<TicketStorageEvent, TicketStorageState> {
  TicketStorageBloc() : super(const TicketStorageState.loading()) {
    on<_add>(_onAddEvent);
    on<_fetch>(_onFetchEvent);
  }

  List<Ticket> tickets = [];

  void _onFetchEvent(_fetch event, Emitter<TicketStorageState> emit) async {
    emit(const TicketStorageState.loading());
    await Future.delayed(const Duration(seconds: 1));
    emit(TicketStorageState.loaded(tickets));
  }

  void _onAddEvent(_add event, Emitter<TicketStorageState> emit) {
    final url = event.url;
    final title = url.substring(url.lastIndexOf('/') + 1).split('.').first;
    final newTicket = Ticket(title: title, type: event.type, url: url);
    tickets.add(newTicket);
    late List<Ticket> old;
    if (state is _ShowingList){
      old = (state as _ShowingList).tickets;
    } else{
      old = [];
    }
    emit(TicketStorageState.loaded(old + [newTicket]));
  }
}
