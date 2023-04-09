import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/models/ticket.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/repositories/tickets_repository.dart';

part 'ticket_storage_event.dart';
part 'ticket_storage_state.dart';
part 'ticket_storage_bloc.freezed.dart';

class TicketStorageBloc extends Bloc<TicketStorageEvent, TicketStorageState> {
  TicketStorageBloc(this._ticketsRepository) : super(const TicketStorageState.loading()) {
    on<_add>(_onAddEvent);
    on<_fetch>(_onFetchEvent);
  }

  final TicketsRepository _ticketsRepository;

  void _onFetchEvent(_fetch event, Emitter<TicketStorageState> emit) async {
    emit(TicketStorageState.loaded(tickets: _ticketsRepository.getAll()));
  }

  void _onAddEvent(_add event, Emitter<TicketStorageState> emit) async {
    final url = event.url;
    final title = url.substring(url.lastIndexOf('/') + 1).split('.').first;
    Directory dir = await getApplicationDocumentsDirectory();
    final localPath = '${dir.path}/$title';
    final newTicket = Ticket(
      title: title,
      type: event.type,
      url: url,
      localPath: localPath,
      downloadStatus: DownloadStatus.notStarted
    );
    _ticketsRepository.addTicket(newTicket);
    emit(TicketStorageState.loaded(tickets: _ticketsRepository.getAll()));
  }
}
